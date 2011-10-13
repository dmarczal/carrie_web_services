module ApplicationHelper
  # I18n Helpers
  def model(args = {})
    count = count_value args[:count]
    if args[:model]
      args[:model].model_name.human count: count
    else
      current_model.model_name.human count: count
    end
  end

  def editing(_model = nil)
    if _model
      title t(:editing) + " " + _model
    else
      title t(:editing) + " " + model
    end
  end

  # translate attributes name
  def attr(attr, args = {})
    count = count_value args[:count]
    _end = args[:end] ? args[:end] : ""
    if args[:model]
      args[:model].human_attribute_name(attr, count: count) + _end
    else
      current_model.human_attribute_name(attr, count: count) + _end
    end
  end

  def current_model
    current_controller_name.singularize.camelcase.constantize
  end

  def current_controller_name
    controller.controller_name
  end

  # Filters
  def filter_by(filter, rows, menu)
    content_tag(:li) {
        content = content_tag(:p) { c = content_tag(:span, nil, :class=> :plus) {"+"}; c << menu; c}

        content << content_tag(:ul) {
                    rows.reduce('') { |c, row|
                      c << content_tag(:li) do
                        link_to_if(params[filter] != row.value, " #{row.value} (#{row.count}) ", params.merge(filter => row.value, :page => nil))
                      end
                    }.html_safe
        }
        content
    }
  end

  #display applied filters
  def filtering(*filters)
    filters.collect { |filter|
      if params[filter].present?
        content_tag(:span, nil, :class => 'filter') {
          "#{params[filter]} #{link_to 'x', params.merge(filter => nil, :page => nil)}".html_safe
        }
      end
    }.join.html_safe
  end

  # mathjax helper
  def math(expression)
    content_tag(:math, :title => expression) do
      #expression
      "$#{tex(expression)}$" rescue expression
    end
  end

private
  def count_value(value)
    value ? value : 1
  end
end
