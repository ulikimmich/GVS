Paperclip::Attachment.default_options.merge!({
                                                 storage: :s3,
                                                 s3_credentials: {
                                                     access_key_id: ENV['AKIAJ3NY7E6P3BBCVG6Q'],
                                                     secret_access_key: ENV['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'],
                                                     bucket: ENV['AWS_BUCKET']
                                                 },
                                                 url: ":s3_domain_url",
                                                 path: "/:class/:attachment/:id/:style/:filename"
                                             })
