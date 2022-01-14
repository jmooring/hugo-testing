let persons = document.getElementsByClassName("enh-hcard");
for (let person of persons) {
    let u = person.getElementsByClassName("u-url")
    if (u.length == 1) {
        let url = u[0].attributes.href.value;
        let req = 'https://indieweb-glue.herokuapp.com/api/hcard?url=';
        req += url;
        const r = encodeURI(req);
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                let hcdata = JSON.parse(this.responseText);
                if (hcdata.uphoto == null) {} else {
                    let i = person.getElementsByTagName("i");
                    if (i.length > 0) {
                        let uri = 'https://indieweb-glue.herokuapp.com/api/photo?url=';
                        uri += hcdata.source;
                        const urienc = encodeURI(uri);
                        const svg = 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"%3E%3C/svg%3E';
                        let pic = '<img class="u-photo photo lazyload" src="' + svg + '" data-src="' + urienc + '">';
                        i[0].outerHTML = pic;
                    }
                }
                if (hcdata.pname == null) {} else {
                    let a = person.getElementsByTagName("a");
                    if (a[0].attributes.title == null) {
                        a[0].setAttribute("title", hcdata.pname);
                    }
                }
            }
        };
        xmlhttp.open("GET", r, true);
        xmlhttp.send();
    }
}
