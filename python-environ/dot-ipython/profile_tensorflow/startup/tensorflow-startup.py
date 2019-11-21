try:
    import tensorflow as tf

#   gpus = tf.config.experimental.list_physical_devices('GPU')
#   if gpus:
#       for gpu in gpus:
#           tf.config.experimental.set_memory_growth(gpu, True)

#   (tf.config
#      .experimental
#      .set_virtual_device_configuration(gpus[0],
#                                        [tf.config
#                                           .experimental
#                                           .VirtualDeviceConfiguration(memory_limit=10240)]))
    gpus = tf.config.experimental.list_physical_devices('GPU')
    if gpus:
        # Restrict TensorFlow to only use the first GPU
        try:
            tf.config.experimental.set_visible_devices(gpus[0], 'GPU')
            tf.config.experimental.set_memory_growth(gpus[0], True)
            tf.config.experimental.set_virtual_device_configuration(
                gpus[0],
                [tf.config.experimental.VirtualDeviceConfiguration(memory_limit=9216)])

            logical_gpus = tf.config.experimental.list_logical_devices('GPU')

            print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPU")
        except RuntimeError as e:
            # Visible devices must be set before GPUs have been initialized
            print(e)
    pass

except ImportError:
    pass
