module.exports = async function (context, req) {
    context.log('JavaScript HTTP trigger function processed a request.');

    const name = (req.query.name || (req.body && req.body.name));
    const responseMessage = name
        ? "Hello, " + name 
        : "Pass a name in the query string or in the request body for a personalized response.";

    context.res = {
        // status: 200, /* Defaults to 200 */
        body: {message: responseMessage},
        cookies: [
            {
                name: "name",
                value: name? name : "NA",
                secure: true,
                httpOnly: false,
                maxAge: 3600*24*365
            },
            {
                name: "http-only-cookie",
                value: "this value can't be read by javascript",
                httpOnly: true,
                secure: true
            }
        ]
    };
}