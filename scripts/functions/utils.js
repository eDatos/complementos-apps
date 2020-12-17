var wget = require('node-wget');
var mkdirp = require('mkdirp');
var path = require('path');

function updateCss(cssFileList, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL, BASE_SUBPATH) {
    cssFileList.forEach((file) => {
        mkdirp.sync(path.dirname(BASE_FOLDER + BASE_PATH + file.path));
        let url = DEFAULT_PROTOCOL + BASE_URL + file.path;
        // console.log("Downloaded from ", url);
        wget({ url: url, dest: BASE_FOLDER + BASE_PATH + file.path });
        if (file.service) {
            console.log("Next file is only for " + file.service.toString() + " services")
        }
        console.log(`@import url('../../${BASE_SUBPATH}${file.path}')${file.media ? ' ' + file.media : ''};`)
    });
}

function updateResources(resourcesFileList, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL) {
    resourcesFileList.forEach((file) => {
        mkdirp.sync(path.dirname(BASE_FOLDER + BASE_PATH + file.path));
        const PROTOCOL = file.protocol ? file.protocol : DEFAULT_PROTOCOL;
        let url = PROTOCOL + BASE_URL + file.path;
        // console.log("Downloaded from ", url);
        wget({ url: url, dest: BASE_FOLDER + BASE_PATH + file.path });
        console.log(`Downloaded ${BASE_FOLDER + BASE_PATH + file.path}`)
    });
}

module.exports = {
    updateCss: updateCss,
    updateResources: updateResources
}