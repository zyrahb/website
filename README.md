# mkdocs website

## Deploy locally

To check site locally
`mkdocs serve`

To build site, create assets
`mkdocs build`

To upload to s3 bucket
`aws s3 sync site s3:<BUCKET-NAME>`

## Troubleshooting

Can't see my updates.

Could be a cache thing with cloudfront create an invalidation with `/*` use >

```bash
aws cloudfront create-invalidation --distribution-id <ID> --paths "/*"
```
