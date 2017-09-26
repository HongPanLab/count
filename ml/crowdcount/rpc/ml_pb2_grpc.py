# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
import grpc

import crowdcount.rpc.ml_pb2 as ml__pb2


class RPCStub(object):
  # missing associated documentation comment in .proto file
  pass

  def __init__(self, channel):
    """Constructor.

    Args:
      channel: A grpc.Channel.
    """
    self.CountCrowd = channel.unary_unary(
        '/RPC/CountCrowd',
        request_serializer=ml__pb2.CountCrowdRequest.SerializeToString,
        response_deserializer=ml__pb2.CountCrowdReply.FromString,
        )


class RPCServicer(object):
  # missing associated documentation comment in .proto file
  pass

  def CountCrowd(self, request, context):
    # missing associated documentation comment in .proto file
    pass
    context.set_code(grpc.StatusCode.UNIMPLEMENTED)
    context.set_details('Method not implemented!')
    raise NotImplementedError('Method not implemented!')


def add_RPCServicer_to_server(servicer, server):
  rpc_method_handlers = {
      'CountCrowd': grpc.unary_unary_rpc_method_handler(
          servicer.CountCrowd,
          request_deserializer=ml__pb2.CountCrowdRequest.FromString,
          response_serializer=ml__pb2.CountCrowdReply.SerializeToString,
      ),
  }
  generic_handler = grpc.method_handlers_generic_handler(
      'RPC', rpc_method_handlers)
  server.add_generic_rpc_handlers((generic_handler,))
