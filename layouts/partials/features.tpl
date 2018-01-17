{{ if isset $.context.Site.Params "features" }}
{{ if $.context.Site.Params.features.enable }}
{{ if gt (len $.data) 0 }}
<section class="bar background-white">
    <div class="container">
        {{ range $index, $element := sort $.data "weight" }}
        {{ if eq (mod $index 4) 0 }}
        <div class="col-md-12">
            <div class="row">
                {{ end }}
                {{ partial "feature-item.html" $element }}
                {{ if or (eq (mod $index 4) 3) (eq $index (sub (len $.data) 1 )) }}
            </div>
        </div>
        {{ end }}
        {{ end }}
    </div>
</section>
{{ end }}
{{ end }}
{{ end }}
