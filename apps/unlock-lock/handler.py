import json
import boto3

def lambda_handler(event, context):
    iot_client = boto3.client('iot-data', region_name='sa-east-1')
    print("Received event:", json.dumps(event))
    try:
        iot_client.publish(
            topic='controleacesso-nodemcu/sub'
            qos=1,
            payload='D'
        )
        return {
            "statusCode": 200,
            "headers": {
                "Content-Type": "application/json"
            },
            "body": json.dumps({
                "success": True
            })
        }
    except:
        return {
            "statusCode": 412,
            "headers": {
                "Content-Type": "application/json"
            },
            "body": json.dumps({
                "success": False,
                "errorReason": "SYSTEM_OFFLINE"
            })
        }
