{{ if isset .context.Site.Params "carousel" }}
{{ if .context.Site.Params.carousel.enable }}
{{ if gt (len .data) 0 }}
<section>
    <div class="home-carousel">
        <div class="dark-mask">
        </div>
        <div class="homepage owl-carousel">
            {{ range sort .data "weight" }}
                {{ partial "carousel-item.html" . }}
            {{ end }}
        </div>
    </div>
</section>
{{ end }}
{{ end }}
{{ end }}
