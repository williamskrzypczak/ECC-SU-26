(function () {
    'use strict';

    var meta = document.querySelector('meta[name="course-base-url"]');
    var base = meta && meta.getAttribute('content');
    if (base) {
        base = base.replace(/\/$/, '');
    } else if (/\.github\.io$/i.test(window.location.hostname)) {
        var segment = window.location.pathname.split('/').filter(Boolean)[0];
        if (segment) {
            base = window.location.origin + '/' + segment;
        }
    }

    if (!base) {
        return;
    }

    document.querySelectorAll('a[href]').forEach(function (anchor) {
        var href = anchor.getAttribute('href');
        if (!href || /^https?:\/\//i.test(href) || href.charAt(0) === '#') {
            return;
        }

        var hash = '';
        var hashIndex = href.indexOf('#');
        if (hashIndex !== -1) {
            hash = href.substring(hashIndex);
            href = href.substring(0, hashIndex);
        }

        var absolutePath = null;

        if (/^\.\.\/canvas-submission-instructions\.html$/i.test(href) ||
            /^\.\.\/Tools\/lab-grader\/canvas-submission-instructions\.html$/i.test(href)) {
            absolutePath = '/canvas-submission-instructions.html';
        } else if (/^\.\.\/index\.html$/i.test(href)) {
            absolutePath = '/index.html';
        } else if (/^\.\.\/Solutions\//i.test(href)) {
            absolutePath = href.replace(/^\.\./, '');
        }

        if (absolutePath) {
            anchor.href = base + absolutePath + hash;
        }
    });
})();
