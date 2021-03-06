hi default link gopherType Type
hi default link gopherLinkDisplay Underlined
hi default link gopherLinkSelector Constant
hi default link gopherLinkHost Keyword
hi default link gopherLinkPort Number
hi default link gopherInfo String

" Types
syntax match gopherType "^[0-9I+dghs]\([^\t]*\t[^\t]*\t[^\t]*\t\d*$\)\@="
syntax match gopherType "^i"

" Informational message
syntax match gopherInfo "\(^i\)\@<=.*"

" Links
" \(baz\)\@<=foo\(bar\)\@=
syntax match gopherLinkDisplay "\(^[0-9h]\)\@<=[^\t]*\(\t[^\t]*\t[^\t]*\t\d*$\)\@="
syntax match gopherLinkSelector "\(^[0-9h][^\t]*\t\)\@<=[^\t]*\(\t[^\t]*\t\d*$\)\@="
syntax match gopherLinkHost "\(^[0-9h][^\t]*\t[^\t]*\t\)\@<=[^\t]*\(\t\d*$\)\@="
syntax match gopherLinkPort "\(^[0-9h][^\t]*\t[^\t]*\t[^\t]*\t\)\@<=[^\t]*\($\)\@="
