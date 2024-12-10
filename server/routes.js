const { PredictHandler, HistoriesHandler } = require('./handler');

const routes = [
    {
        method: 'POST',
        path: '/predict',
        options: {
            payload: {
                maxBytes: 1000000,
                multipart: true,
                allow: 'multipart/form-data',
            },
        },
        handler: PredictHandler,
    },
    {
        method: 'GET',
        path: '/predict/histories',
        handler: HistoriesHandler,
    },
];

module.exports = routes;
