set clock_constraint { \
    name clk \
    module sobel_filter \
    port ap_clk \
    period 20 \
    uncertainty 2.5 \
}

set all_path {}

set false_path {}

