package org.gradle.presentation.asciidoc;

import org.asciidoctor.ast.AbstractBlock;
import org.asciidoctor.extension.InlineMacroProcessor;

import java.util.Map;

class ScreencastAsciidoctorExtension extends InlineMacroProcessor {
    ScreencastAsciidoctorExtension() {
        super("screencast");
    }

    @Override
    protected Object process(AbstractBlock parent, String target, Map<String, Object> attributes) {
        StringBuilder markup=new StringBuilder();
        markup
                .append("<asciinema-player src='./")
                .append(target)
                .append(".cast'");
        if (attributes.containsKey("text")) {
            markup
                    .append(' ')
                    .append(attributes.get("text"));
        }
        markup
                .append(" class='stretch' theme='gradle'></asciinema-player>");
        return markup.toString();
    }
}
