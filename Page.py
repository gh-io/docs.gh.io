import SwaggerUIClient from "./SwaggerUIClient"
import Head from "next/head"

export const meta = {
  title: "httpbin.org API",
  version: "0.9.2"
}

<Head>
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Source+Code+Pro:300,600|Titillium+Web:400,600,700"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="/flasgger_static/swagger-ui.css" />
</Head>

# httpbin.org API

**Version:** `{meta.version}`  
**Base URL:** `httpbin.org/`

A simple HTTP Request & Response Service.

```bash
docker run -p 80:80 kennethreitz/httpbin
