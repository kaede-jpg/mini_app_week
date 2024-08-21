module ApplicationHelper
  def default_meta_tags
    {
      site: 'アルティメット色おに',
      charset: 'utf-8',
      description: '絵の中から指定された色を見つけるだけの”簡単”なゲームだぞ！',
      keywords: '色おに,色,難しい,SNS,レトロ,子供',
      canonical: request.original_url,
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('title_logo.png'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        image: image_url('title_logo.png')
      }
    }
  end
end
