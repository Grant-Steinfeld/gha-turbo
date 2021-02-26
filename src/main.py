import logging
import logging.config
from os import path

def main():
  """  testing logger """
  logger.info("starting")


if __name__ == "__main__":
  log_file_path = path.join(path.dirname(path.abspath(__file__)), 'logging.conf')
  logging.config.fileConfig(log_file_path)
  logger = logging.getLogger(__name__)
  main()