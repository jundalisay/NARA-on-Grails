$("#container1").datamap({
   scope: 'world',
   geography_config: {
     borderColor: 'rgba(255,255,255,0.3)',
     highlightBorderColor: 'rgba(0,0,0,0.5)',
     popupTemplate: _.template([
       '<div class="hoverinfo">',
       '<% if (data.name) { %> <strong><%= geography.properties.name %></strong><br/><% } %>',
       '<% if (data.startOfConflict) { %>',
       'Started <%= data.startOfConflict %><br/> <% } %>',
       '<%= data.name %>',
       '</div>'
      ].join('') )
   },
   fills: {
     conflict: 'red',
     defaultFill: '#006590' 
   },
   data: {
     'MLI': {
       fillKey: 'conflict',
       name: 'Needs Water',
       startOfConflict: 2012
      },
     'LBY': {
       fillKey: 'conflict',
       name: 'Needs Security',
       startOfConflict: 2011
      },
     'IRQ': {
       fillKey: 'conflict',
       name: 'Needs bomb-sniffing dogs)',
       startOfConflict: 2011
      },
     'SYR': {
       fillKey: 'conflict',
       name: 'Needs Gas Masks',
       startOfConflict: 2011
      },
     'SDN': {
       fillKey: 'conflict',
       name: 'Needs Food',
       startOfConflict: 2011
      },
     'MEX': {
       fillKey: 'conflict',
       name: 'Needs Steel',
       startOfConflict: 2006
      },
     'PAK': {
       fillKey: 'conflict',
       name: 'Needs Seeds',
       startOfConflict: 2004
      },
     'YEM': {
       fillKey: 'conflict',
       name: 'Needs Technicians',
       startOfConflict: 2001
      },
     'MMR': {
       fillKey: 'conflict',
       name: 'Needs Civil Engineers',
       startOfConflict: 1948
      },
     'COL': {
       fillKey: 'conflict',
       name: 'Needs Manufactured Goods',
       startOfConflict: 1964
      },
     'AFG': {
       fillKey: 'conflict',
       name: 'Needs Seeds',
       startOfConflict: 1978
      }
   }
});