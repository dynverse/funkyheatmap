calculate_column_positions <- function(column_info, col_widths, col_space, col_bigspace) {
  column_info %>%
    mutate(
      do_spacing = c(FALSE, diff(as.integer(factor(group))) != 0),
      xsep = case_when(
        overlay ~ c(0, -head(width, -1)),
        do_spacing ~ col_bigspace,
        TRUE ~ col_space
      ),
      xwidth = case_when(
        overlay & width < 0 ~ width - xsep,
        overlay ~ -xsep,
        TRUE ~ width
      ),
      xmax = cumsum(xwidth + xsep),
      xmin = xmax - xwidth,
      x = xmin + xwidth / 2
    )
}