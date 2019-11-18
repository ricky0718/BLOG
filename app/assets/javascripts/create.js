$(".item-button-container__left").html("#{escape_javascript(render partial: 'like', locals: { entry: @entry, entries: @entries, likes: @likes, like: @like})}");
