{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": "-- Grafana --",
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "type": "dashboard"
      }
    ]
  },
  "description": "",
  "editable": true,
  "gnetId": null,
  "graphTooltip": 0,
  "id": 7,
  "iteration": 1601975151139,
  "links": [],
  "panels": [
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 8,
      "panels": [],
      "title": "Web App",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 1
      },
      "id": 9,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) by (status)",
          "format": "time_series",
          "interval": "1m",
          "intervalFactor": 1,
          "legendFormat": "{{`{{status}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "System requests per second (by status)",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 1,
          "format": "reqps",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 1
      },
      "id": 10,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) by (controller)",
          "format": "time_series",
          "interval": "1m",
          "intervalFactor": 1,
          "legendFormat": "{{`{{controller}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "System requests per second (by controller)",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 1,
          "format": "reqps",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 9
      },
      "id": 11,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',status=~'2[0-9]*'}[1m])) by (controller)",
          "format": "time_series",
          "interval": "1m",
          "intervalFactor": 1,
          "legendFormat": "{{`{{controller}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "System 2xx requests per second (by controller)",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 1,
          "format": "reqps",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 12,
        "y": 9
      },
      "id": 12,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": true,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',status=~'4[0-9]*'}[1m])) by (controller)",
          "format": "time_series",
          "interval": "1m",
          "intervalFactor": 1,
          "legendFormat": "{{`{{controller}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "System 4xx requests per second (by controller)",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 1,
          "format": "reqps",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 18,
        "y": 9
      },
      "id": 13,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',status=~'5[0-9]*'}[1m])) by (controller)",
          "format": "time_series",
          "interval": "1m",
          "intervalFactor": 1,
          "legendFormat": "{{`{{controller}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "System 5xx requests per second (by controller)",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 1,
          "format": "reqps",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 17
      },
      "id": 14,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(rails_request_duration_seconds_sum{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) / sum(rate(rails_request_duration_seconds_count{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m]))",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "Total",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Rails average response time",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": null,
          "format": "s",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "cards": {
        "cardPadding": null,
        "cardRound": null
      },
      "color": {
        "cardColor": "#5794F2",
        "colorScale": "sqrt",
        "colorScheme": "interpolateBlues",
        "exponent": 0.5,
        "mode": "opacity"
      },
      "dataFormat": "tsbuckets",
      "datasource": "$datasource",
      "description": "",
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 17
      },
      "heatmap": {},
      "hideZeroBuckets": false,
      "highlightCards": true,
      "id": 15,
      "legend": {
        "show": false
      },
      "links": [],
      "options": {},
      "reverseYBuckets": false,
      "targets": [
        {
          "expr": "sum(rails_request_duration_seconds_bucket{namespace='$namespace',pod=~'system-app-.*'}) by (le)",
          "format": "heatmap",
          "interval": "1m",
          "intervalFactor": 10,
          "legendFormat": "{{`{{le}}`}}",
          "refId": "A"
        }
      ],
      "timeFrom": null,
      "timeShift": null,
      "title": "Requests per second heatmap (by response time bucket in seconds)",
      "tooltip": {
        "show": true,
        "showHistogram": false
      },
      "type": "heatmap",
      "xAxis": {
        "show": true
      },
      "xBucketNumber": null,
      "xBucketSize": null,
      "yAxis": {
        "decimals": 0,
        "format": "s",
        "logBase": 1,
        "max": null,
        "min": null,
        "show": true,
        "splitFactor": null
      },
      "yBucketBound": "auto",
      "yBucketNumber": null,
      "yBucketSize": null
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 39
      },
      "id": 20,
      "panels": [],
      "title": "Sidekiq",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 40
      },
      "id": 21,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "max": false,
        "min": false,
        "rightSide": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(sidekiq_jobs_success_total{namespace='$namespace'}[1m]))",
          "format": "time_series",
          "hide": false,
          "intervalFactor": 2,
          "legendFormat": "Successful jobs",
          "refId": "A"
        },
        {
          "expr": "sum(rate(sidekiq_jobs_failed_total{namespace='$namespace'}[1m]))",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "Failed jobs",
          "refId": "B"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Jobs processed every second",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "ops",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 48
      },
      "id": 22,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "hideEmpty": true,
        "hideZero": true,
        "max": false,
        "min": false,
        "rightSide": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(sidekiq_jobs_success_total{namespace='$namespace'}[1m])) by (queue)",
          "format": "time_series",
          "hide": false,
          "intervalFactor": 2,
          "legendFormat": "Processed in {{`{{queue}}`}}",
          "refId": "A"
        },
        {
          "expr": "sum(rate(sidekiq_jobs_failed_total{namespace='$namespace'}[1m])) by (queue)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "Failed in {{`{{queue}}`}}",
          "refId": "B"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Jobs processed by queue",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "ops",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 48
      },
      "id": 23,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "hideEmpty": true,
        "hideZero": true,
        "max": false,
        "min": false,
        "rightSide": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(sidekiq_jobs_success_total{namespace='$namespace'}[1m])) by (worker)",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 2,
          "legendFormat": "{{`{{worker}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Jobs processed by job type",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "ops",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 56
      },
      "id": 24,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": true,
        "hideEmpty": true,
        "max": false,
        "min": false,
        "rightSide": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "max(sidekiq_jobs_waiting_count{namespace='$namespace'}) by (queue)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{queue}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Queue sizes",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "description": "Queue latency is the difference in seconds since the oldest job in the queue was enqueued. Or how long job is waiting its turn to be executed.",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 56
      },
      "id": 25,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": true,
        "hideEmpty": true,
        "max": false,
        "min": false,
        "rightSide": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "max(sidekiq_queue_latency{namespace='$namespace'}) by (queue)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{queue}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Queue latencies",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "s",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 64
      },
      "id": 26,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "histogram_quantile(0.95, sum(rate(sidekiq_job_runtime_seconds_bucket{namespace='$namespace'}[1m])) by (le)) ",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "95% quantile of sidekiq ",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Job processing average time",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "s",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 64
      },
      "id": 27,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "histogram_quantile(0.95, sum(rate(sidekiq_job_runtime_seconds_bucket{namespace='$namespace'}[1m])) by (worker, le)) ",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{worker}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Job processing average time by job type",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "s",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 72
      },
      "id": 28,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "hideEmpty": true,
        "max": false,
        "min": false,
        "rightSide": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(rate(sidekiq_jobs_enqueued_total{namespace='$namespace'}[1m])) by (queue)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{queue}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Sidekiq jobs pushed by queue",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 72
      },
      "id": 29,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": true,
        "hideEmpty": true,
        "max": false,
        "min": false,
        "rightSide": true,
        "show": false,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "expr": "max(sidekiq_jobs_retry_count{namespace='$namespace'})",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{queue}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Retry set",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 80
      },
      "id": 30,
      "panels": [],
      "repeat": "deploymentConfig",
      "title": "Pods ($deploymentConfig)",
      "type": "row"
    },
    {
      "cacheTimeout": null,
      "colorBackground": true,
      "colorValue": false,
      "colors": [
        "#F2495C",
        "rgba(237, 129, 40, 0.89)",
        "#299c46"
      ],
      "datasource": "$datasource",
      "decimals": 0,
      "format": "none",
      "gauge": {
        "maxValue": 100,
        "minValue": 0,
        "show": false,
        "thresholdLabels": false,
        "thresholdMarkers": true
      },
      "gridPos": {
        "h": 3,
        "w": 6,
        "x": 0,
        "y": 81
      },
      "hideTimeOverride": true,
      "id": 31,
      "interval": "",
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "options": {},
      "pluginVersion": "6.2.4",
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
      "rangeMaps": [
        {
          "from": "null",
          "text": "N/A",
          "to": "null"
        }
      ],
      "sparkline": {
        "fillColor": "rgba(31, 118, 189, 0.18)",
        "full": false,
        "lineColor": "rgb(31, 120, 193)",
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
          "format": "time_series",
          "intervalFactor": 1,
          "refId": "A"
        }
      ],
      "thresholds": "1,2",
      "timeFrom": "30s",
      "timeShift": "30s",
      "title": "Running pods",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "0",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": true,
      "colorPrefix": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
        "#F2495C"
      ],
      "datasource": "$datasource",
      "decimals": 0,
      "format": "none",
      "gauge": {
        "maxValue": 100,
        "minValue": 0,
        "show": false,
        "thresholdLabels": false,
        "thresholdMarkers": true
      },
      "gridPos": {
        "h": 3,
        "w": 6,
        "x": 6,
        "y": 81
      },
      "hideTimeOverride": true,
      "id": 32,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "options": {},
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
      "rangeMaps": [
        {
          "from": "null",
          "text": "N/A",
          "to": "null"
        }
      ],
      "sparkline": {
        "fillColor": "rgba(31, 118, 189, 0.18)",
        "full": false,
        "lineColor": "rgb(31, 120, 193)",
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
          "format": "time_series",
          "intervalFactor": 1,
          "refId": "A"
        }
      ],
      "thresholds": "1,2",
      "timeFrom": "30s",
      "timeShift": "30s",
      "title": "Unavailable pods",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "0",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": true,
      "colorValue": false,
      "colors": [
        "#F2495C",
        "rgba(237, 129, 40, 0.89)",
        "#299c46"
      ],
      "datasource": "$datasource",
      "decimals": 0,
      "format": "none",
      "gauge": {
        "maxValue": 100,
        "minValue": 0,
        "show": false,
        "thresholdLabels": false,
        "thresholdMarkers": true
      },
      "gridPos": {
        "h": 3,
        "w": 6,
        "x": 12,
        "y": 81
      },
      "hideTimeOverride": true,
      "id": 33,
      "interval": "",
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "options": {},
      "pluginVersion": "6.2.4",
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
      "rangeMaps": [
        {
          "from": "null",
          "text": "N/A",
          "to": "null"
        }
      ],
      "sparkline": {
        "fillColor": "rgba(31, 118, 189, 0.18)",
        "full": false,
        "lineColor": "rgb(31, 120, 193)",
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
          "format": "time_series",
          "intervalFactor": 1,
          "refId": "A"
        }
      ],
      "thresholds": "1,2",
      "timeFrom": "30s",
      "timeShift": "30s",
      "title": "Pods distributed on hosts",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "0",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": true,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
        "#d44a3a"
      ],
      "datasource": "$datasource",
      "decimals": 0,
      "format": "none",
      "gauge": {
        "maxValue": 100,
        "minValue": 0,
        "show": false,
        "thresholdLabels": false,
        "thresholdMarkers": true
      },
      "gridPos": {
        "h": 3,
        "w": 6,
        "x": 18,
        "y": 81
      },
      "hideTimeOverride": true,
      "id": 34,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "options": {},
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
      "rangeMaps": [
        {
          "from": "null",
          "text": "N/A",
          "to": "null"
        }
      ],
      "sparkline": {
        "fillColor": "rgba(31, 118, 189, 0.18)",
        "full": false,
        "lineColor": "rgb(31, 120, 193)",
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "expr": "max(sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m]))) by (pod)",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "B"
        }
      ],
      "thresholds": "1,2",
      "timeFrom": "30s",
      "timeShift": "30s",
      "title": "Max pods restarts (last 5 minutes)",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "0",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 84
      },
      "id": 35,
      "legend": {
        "avg": false,
        "current": false,
        "hideEmpty": true,
        "hideZero": true,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "maxPerRow": 3,
      "nullPointMode": "null as zero",
      "options": {},
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "repeat": null,
      "repeatDirection": null,
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "total-pods",
          "legendLink": null,
          "refId": "A",
          "step": 10
        },
        {
          "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "avail-pods",
          "refId": "B"
        },
        {
          "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "unavail-pods",
          "refId": "C"
        },
        {
          "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "used-hosts",
          "refId": "D"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Pod count (total, avail, unvail) and pods hosts distribution",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 0,
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": false
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 6,
        "w": 24,
        "x": 0,
        "y": 91
      },
      "id": 36,
      "legend": {
        "avg": false,
        "current": false,
        "hideEmpty": true,
        "hideZero": true,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "maxPerRow": 3,
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "repeat": null,
      "repeatDirection": null,
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
          "format": "time_series",
          "intervalFactor": 1,
          "legendFormat": "{{`{{pod}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Pods restarts (last 5 minutes)",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 97
      },
      "id": 37,
      "panels": [],
      "repeat": "deploymentConfig",
      "title": "CPU Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 98
      },
      "id": 38,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "maxPerRow": 3,
      "nullPointMode": "null as zero",
      "options": {},
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "repeat": null,
      "repeatDirection": "h",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:{{ .SumRate }}{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{pod}}`}}",
          "legendLink": null,
          "refId": "A",
          "step": 10
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "CPU Usage",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": false
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 105
      },
      "id": 39,
      "panels": [],
      "repeat": "deploymentConfig",
      "title": "CPU Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "columns": [],
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "fontSize": "100%",
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 106
      },
      "id": 40,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "maxPerRow": 3,
      "nullPointMode": "null as zero",
      "options": {},
      "pageSize": null,
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "repeat": null,
      "repeatDirection": "h",
      "scroll": true,
      "seriesOverrides": [],
      "showHeader": true,
      "sort": {
        "col": 1,
        "desc": false
      },
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "styles": [
        {
          "alias": "Time",
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "pattern": "Time",
          "type": "hidden"
        },
        {
          "alias": "CPU Usage",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #A",
          "thresholds": [],
          "type": "number",
          "unit": "short"
        },
        {
          "alias": "CPU Requests",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #B",
          "thresholds": [],
          "type": "number",
          "unit": "short"
        },
        {
          "alias": "CPU Requests %",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #C",
          "thresholds": [],
          "type": "number",
          "unit": "percentunit"
        },
        {
          "alias": "CPU Limits",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #D",
          "thresholds": [],
          "type": "number",
          "unit": "short"
        },
        {
          "alias": "CPU Limits %",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #E",
          "thresholds": [],
          "type": "number",
          "unit": "percentunit"
        },
        {
          "alias": "Pod",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": true,
          "linkTooltip": "Drill down",
          "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
          "pattern": "pod",
          "thresholds": [],
          "type": "number",
          "unit": "short"
        },
        {
          "alias": "",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "pattern": "/.*/",
          "thresholds": [],
          "type": "string",
          "unit": "short"
        }
      ],
      "targets": [
        {
          "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:{{ .SumRate }}{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "A",
          "step": 10
        },
        {
          "expr": "sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "B",
          "step": 10
        },
        {
          "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:{{ .SumRate }}{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "C",
          "step": 10
        },
        {
          "expr": "sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "D",
          "step": 10
        },
        {
          "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:{{ .SumRate }}{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "E",
          "step": 10
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "CPU Quota",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transform": "table",
      "type": "table",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": false
        }
      ]
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 113
      },
      "id": 41,
      "panels": [],
      "repeat": "deploymentConfig",
      "title": "Memory Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 114
      },
      "id": 42,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
      "options": {},
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{pod}}`}}",
          "legendLink": null,
          "refId": "A",
          "step": 10
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Memory Usage",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "bytes",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": false
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 121
      },
      "id": 43,
      "panels": [],
      "repeat": "deploymentConfig",
      "title": "Memory Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "columns": [],
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "fontSize": "100%",
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 122
      },
      "id": 44,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
      "options": {},
      "pageSize": null,
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "scroll": true,
      "seriesOverrides": [],
      "showHeader": true,
      "sort": {
        "col": 1,
        "desc": true
      },
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "styles": [
        {
          "alias": "Time",
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "pattern": "Time",
          "type": "hidden"
        },
        {
          "alias": "Memory Usage",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #A",
          "thresholds": [],
          "type": "number",
          "unit": "decbytes"
        },
        {
          "alias": "Memory Requests",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #B",
          "thresholds": [],
          "type": "number",
          "unit": "decbytes"
        },
        {
          "alias": "Memory Requests %",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #C",
          "thresholds": [],
          "type": "number",
          "unit": "percentunit"
        },
        {
          "alias": "Memory Limits",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #D",
          "thresholds": [],
          "type": "number",
          "unit": "decbytes"
        },
        {
          "alias": "Memory Limits %",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": false,
          "linkTooltip": "Drill down",
          "linkUrl": "",
          "pattern": "Value #E",
          "thresholds": [],
          "type": "number",
          "unit": "percentunit"
        },
        {
          "alias": "Pod",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "link": true,
          "linkTooltip": "Drill down",
          "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
          "pattern": "pod",
          "thresholds": [],
          "type": "number",
          "unit": "short"
        },
        {
          "alias": "",
          "colorMode": null,
          "colors": [],
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "decimals": 2,
          "pattern": "/.*/",
          "thresholds": [],
          "type": "string",
          "unit": "short"
        }
      ],
      "targets": [
        {
          "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "A",
          "step": 10
        },
        {
          "expr": "sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "B",
          "step": 10
        },
        {
          "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "C",
          "step": 10
        },
        {
          "expr": "sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "D",
          "step": 10
        },
        {
          "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
          "format": "table",
          "instant": true,
          "intervalFactor": 2,
          "legendFormat": "",
          "refId": "E",
          "step": 10
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Memory Quota",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transform": "table",
      "type": "table",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": false
        }
      ]
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 129
      },
      "id": 45,
      "panels": [],
      "repeat": "deploymentConfig",
      "title": "Network Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 130
      },
      "id": 46,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(irate(container_network_receive_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{pod}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Receive Bandwidth",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": null,
          "format": "Bps",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": false
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 24,
        "x": 0,
        "y": 137
      },
      "id": 47,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(irate(container_network_transmit_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
          "format": "time_series",
          "intervalFactor": 2,
          "legendFormat": "{{`{{pod}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Transmit Bandwidth",
      "tooltip": {
        "shared": true,
        "sort": 2,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "Bps",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": false
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 145
      },
      "id": 100,
      "panels": [],
      "repeat": "deploymentConfig",
      "title": "Active Record ($deploymentConfig)",
      "type": "row"
    },
    {
      "aliasColors": {},
      "bars": false,
      "cacheTimeout": null,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 146
      },
      "id": 48,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pluginVersion": "6.2.4",
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum(label_replace(rails_connection_pool_connections{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'},'connection', '$1', 'state', '(.*)')) by (connection)",
          "format": "time_series",
          "interval": "1m", 
          "intervalFactor": 1,
          "legendFormat": "{{`{{connection}}`}}",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Rails Pod Connections",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 0,
          "format": "locale",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 154
      },
      "id": 52,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": false,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum (rails_connection_pool_size{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'})",
          "format": "time_series",
          "instant": false,
          "interval": "1m",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Rails Connection Pool Size",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 1,
          "format": "locale",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "$datasource",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 154
      },
      "id": 51,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": false,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "options": {},
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "expr": "sum (rails_connection_pool_waiting{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'})",
          "format": "time_series",
          "interval": "1m",
          "intervalFactor": 1,
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Rails Connection Pool Waiting",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "decimals": 0,
          "format": "locale",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": 5
      }
    }
  ],
  "refresh": "10s",
  "schemaVersion": 18,
  "style": "dark",
  "tags": [
    "3scale",
    "system"
  ],
  "templating": {
    "list": [
      {
        "hide": 0,
        "includeAll": false,
        "label": null,
        "multi": false,
        "name": "datasource",
        "options": [],
        "query": "prometheus",
        "refresh": 1,
        "regex": "",
        "skipUrlSync": false,
        "type": "datasource"
      },
      {
        "allValue": null,
        "current": {
          "tags": [],
          "text": "{{ .Namespace }}",
          "value": "{{ .Namespace }}"
        },
        "hide": 0,
        "includeAll": false,
        "label": "namespace",
        "multi": false,
        "name": "namespace",
        "options": [
          {
            "selected": true,
            "text": "{{ .Namespace }}",
            "value": "{{ .Namespace }}"
          }
        ],
        "query": "{{ .Namespace }}",
        "skipUrlSync": false,
        "type": "custom"
      },
      {
        "allValue": "",
        "datasource": "$datasource",
        "definition": "label_values(kube_pod_info{namespace='$namespace',pod=~'system-.*'}, pod)",
        "hide": 0,
        "includeAll": true,
        "label": "deploymentConfig",
        "multi": false,
        "name": "deploymentConfig",
        "options": [],
        "query": "label_values(kube_pod_info{namespace='$namespace',pod=~'system-.*'}, pod)",
        "refresh": 1,
        "regex": "/([a-z]+-[a-z]+)-[0-9]*/",
        "skipUrlSync": false,
        "sort": 1,
        "tagValuesQuery": "",
        "tags": [],
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      }
    ]
  },
  "time": {
    "from": "now-1h",
    "to": "now"
  },
  "timepicker": {
    "refresh_intervals": [
      "5s",
      "10s",
      "30s",
      "1m",
      "5m",
      "15m",
      "30m",
      "1h",
      "2h",
      "1d"
    ],
    "time_options": [
      "5m",
      "15m",
      "1h",
      "6h",
      "12h",
      "24h",
      "2d",
      "7d",
      "30d"
    ]
  },
  "timezone": "",
  "title": "3scale / System",
  "version": 1
}
