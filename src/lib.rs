#[macro_use]
extern crate rutie;
extern crate vader_sentiment;

use rutie::{Class, Object};
use rutie_serde::{ruby_class, rutie_serde_methods};
use vader_sentiment::SentimentIntensityAnalyzer;
use serde::{Deserialize, Serialize};

#[derive(Clone, Serialize, Deserialize, Debug)]
struct SentimentOutput {
  pub compound: f64,
  pub pos: f64,
  pub neg: f64,
  pub neu: f64
}


class!(SemanticAnalyzer);

rutie_serde_methods!(
    SemanticAnalyzer,
    _rtself,
    ruby_class!(Exception),
    fn pub_score_polarity(
        input: String,
    ) -> SentimentOutput {
        let analyzer = SentimentIntensityAnalyzer::new();
        let out = analyzer.polarity_scores(&input.as_str());
        SentimentOutput {
          compound: out["compound"],
          pos: out["pos"],
          neg: out["neg"],
          neu: out["neu"]
        }
    }
);

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_semantic_analyzer() {
    Class::new("SemanticAnalyzer", None).define(|klass| {
        klass.def_self("score_polarity", pub_score_polarity);
    });
}
