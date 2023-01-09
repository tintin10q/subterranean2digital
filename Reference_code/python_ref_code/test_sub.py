

# In python its literally this

# def subterranean_round(state_bits):
    #   Chi step
    # new_state_bits = [
    #     state_bits[i] ^ ((1 ^ state_bits[(i + 1) % SUBTERRANEAN_SIZE]) & state_bits[(i + 2) % SUBTERRANEAN_SIZE]) for i
    #     in range(SUBTERRANEAN_SIZE)]
    ##  Iota step
    # new_state_bits[0] ^= 1
    ##  Theta step
    # new_state_bits = [
    #     new_state_bits[i] ^ new_state_bits[(i + 3) % SUBTERRANEAN_SIZE] ^ new_state_bits[(i + 8) % SUBTERRANEAN_SIZE]
    #     for i in range(SUBTERRANEAN_SIZE)]
    ##    Pi step
    # new_state_bits = [new_state_bits[(12 * i) % SUBTERRANEAN_SIZE] for i in range(SUBTERRANEAN_SIZE)]
    # return new_state_bits

import subterranean_bit as subterranean
import secrets

value_in = subterranean.bytearray_to_bits(secrets.token_bytes(16))
print(f"Value in: {value_in}")

state = subterranean.subterranean_init()
print(f"State: {state}")

result = subterranean.subterranean_absorb_keyed(state, value_in)
print(f"Resul: {result}")
print(len(result))
