
function update() {
  $.ajax({
    url: '/update',
    success: function(_data) {
      data = $.parseJSON(_data);
      $("#content p").html(data.total);
      $("#regioes .norte strong").html(data.zonas.norte);
      $("#regioes .sul strong").html(data.zonas.sul);
      $("#regioes .leste strong").html(data.zonas.leste);
      $("#regioes .oeste strong").html(data.zonas.oeste);
      $("#regioes .centro strong").html(data.zonas.centro);
      window.setTimeout(update, 60000);
      
    }
  });
};

$(document).ready(function() {
  window.setTimeout(update, 60000);
});