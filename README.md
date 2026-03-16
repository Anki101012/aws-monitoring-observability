# AWS Monitoring & Observability Architecture

This project demonstrates an AWS infrastructure monitoring solution using **Amazon Managed Grafana and AWS CloudWatch**.  

A monitoring dashboard was built to visualize key EC2 metrics including **CPU utilization, network traffic, and instance health status checks**, enabling real-time infrastructure observability.

The solution integrates AWS native monitoring services with Grafana dashboards to provide centralized visibility into system performance and health.

## Architecture

The monitoring solution integrates AWS CloudWatch metrics with Amazon Managed Grafana to visualize infrastructure health and performance.

![Architecture Diagram](architecture/monitoring-architecture.png)

## Architecture Overview

The monitoring architecture consists of the following components:

### EC2 Instance
The application infrastructure runs on an Amazon EC2 instance which generates operational metrics such as CPU utilization, network traffic, and instance health status.

### AWS CloudWatch
CloudWatch collects and stores EC2 infrastructure metrics automatically. These metrics include:

- CPU Utilization
- Memory Status
- Instance Status Checks
- Disk Check

### Amazon Managed Grafana
Amazon Managed Grafana connects to CloudWatch as a data source and provides a visualization layer for monitoring infrastructure metrics.

Custom dashboards were created to display:

- CPU utilization trends
- Memory usage
- Instance health monitoring
- Disk usage

### Grafana Alerting
Alert rules were configured in Grafana to detect infrastructure anomalies based on CloudWatch metrics and trigger alerts when thresholds are exceeded.

This architecture demonstrates real-world monitoring practices used in production cloud environments.
