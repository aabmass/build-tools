#!/bin/sh
docker run -v ~/repo/opentelemetry-specification/semantic_conventions:/semantic_conventions:ro -v $PWD:/output semconvgen:local --yaml-root=/semantic_conventions code --trim-whitespace --output /output/foo.tf --template /output/foo.tf.j2
