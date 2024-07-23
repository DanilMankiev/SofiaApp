package rabbitmq

import "github.com/rabbitmq/amqp091-go"

func (client *Client) Consume(queue, consumer string, autoAck, exclusive, noLocal, noWait bool, args amqp091.Table) (<-chan amqp091.Delivery,error){
	client.m.Lock()
	if !client.isReady {
		client.m.Unlock()
		client.logger.Errorf("Not ready to consume: %s",errNotConnected.Error())
		return nil,errNotConnected
	}

	return client.channel.Consume(queue,consumer,autoAck,exclusive,noLocal,noWait,args) 
}