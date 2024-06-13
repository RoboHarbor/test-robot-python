{
    "description": "<h1>Test Robot</h1><div>You can configure me to do anything!</div>",
    "name": "Test Robot",
    "runnable": {
      "type": "container",
      "container": "roboharbor/robo-pier-python"
    },
    "process": {
      "run": "python scrape.py "
      "properties": {
          "python-version": "3.10"
        }
    }
    "parameters": {
      "title": "Parameters for your Robot",
      "description": "Description.",
      "type": "object",
      "required": [
        "url",
        "depth",
        "targetWebhook"
      ],
      "properties": {
        "url": {
          "type": "url",
          "title": "The URL you want to fetch the data from"
        },
        "depth": {
          "type": "integer",
          "title": "Depth to follow links and scraping data",
          "default": 10
        },
        "targetWebhook": {
          "type": "url",
          "title": "The Webhook to send the data"
        }
      }
    },
    "uiSchema": {
      "url": {
        "ui:autofocus": true,
        "ui:emptyValue": "",
        "ui:placeholder": "Your URL to scrape",
        "ui:description": "Make text **bold** or *italic*. Take a look at other options [here](https://markdown-to-jsx.quantizor.dev/)."
      },
      "depth": {
        "ui:widget": "number",
        "ui:enableMarkdownInDescription": true,
        "ui:description": "Make things **bold** or *italic*. Embed snippets of `code`. <small>And this is a small texts.</small> "
      },
      "targetWebhook": {
        "ui:widget": "url",
        "ui:title": "The Webhook Target"
      }
    },
    "version": "1.0"
}