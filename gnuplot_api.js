var gnuplot = {
    
    init: function(jsname) {
        this.worker = new Worker(jsname);
        var that = this;
        this.worker.addEventListener('message', function(e) {
            // console.log('gnuplot: ', e.data); //enable for debug
            var data = e.data;
            if (data.transaction < 0) {
                if (data.transaction == -1) {
                    that.output.push(data.content);
                    that.onOutput(data.content);
                };
                if (data.transaction == -2) {
                    that.error.push(data.content);
                    that.onError(data.content);
                };
                return;
            }
            if (data.content == 'FINISH')
                that.isRunning = false;
            if (data.transaction && that.callbacks[data.transaction]) {
                that.callbacks[data.transaction](data);
                delete that.callbacks[data.transaction];
            }
        }, false);
        this.worker.postMessage({});
        
    },
    
    // for data files
    putFile: function(name_, contents) {
        var data = {
            name: name_,
            content: contents,
            cmd: 'putFile'
        };
        this.postCommand(data, null);
    },
    
    // to read output
    getFile: function(name_, callback) {
        var data = {
            name: name_,
            cmd: 'getFile'
        };
        this.postCommand(data, callback);
    },
    
    output: [],
    error: [],
    isRunning: false,
    
    run: function(script, onFinish) {
        if (this.isRunning) return false;
        this.putFile('foo', script);
        var data = {
            content: ['foo'],
            cmd: 'run'
        };
        this.isRunning = true;
        this.postCommand(data, onFinish);
        return true;
    },
    
    onOutput: function(text){},
    onError: function(text){},
    
    // private
    worker: null,
    transaction: 1,
    callbacks: [],
    postCommand: function(data, callback) {
        var id = this.transaction; //fresh id
        data.transaction = id; // give data object a tag
        this.callbacks[id] = callback;
        this.worker.postMessage(data);
        this.transaction++;
    }
}
