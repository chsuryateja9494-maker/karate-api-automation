function fn() {
    var env = karate.env;
   env = 'stage'; // get system property 'karate.env'
    if (!env) {
        env = 'dev';
    }

    var config = {
        someUrlBase: 'https://gorest.co.in'
    };

    if (env == 'stage') {
        config.someUrlBase = 'https://example.com';
    } else if (env == 'e2e') {
        config.someUrlBase = 'https://e2ebang2.com';
        config.authToken = 'prod-high-security-token';
    }

    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
// var result = karate.callSingle('classpath:karateTest/callSingle.feature');
// config.authInfo = result;
    //if callonce is used along with Background keyword, this shouldbe commented to avoid executing each time along with scenario
    return config;
}