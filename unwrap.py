
SUBTERRANEAN_SIZE = 257

def subterranean_round(state):
    return state


def subterranean_duplex(state, sigma):
    """ state is 257 bits and sigma is 32 bits """
    print("def subterranean_duplex(state: bytes, sigma: bytes):")
    print('\t""" state is 257 bits and sigma is 32 bits """')
    new_state = subterranean_round(state)
    print("\tnew_state = subterranean_round(state)")
    index_j = 1
    s0_63 = []
    s64_127 = []
    s128_191 = []
    s192_255 = []
    s256 = []
    s = []
    for i in range(len(sigma)):
        print(f"\tnew_state[{index_j}] = new_state[{index_j}] ^ sigma[{i}]")
        new_state[index_j] ^= sigma[i]

        s.append((index_j,i))
        if 0 <= index_j <= 63:
            s0_63.append(index_j % 64)
        if 64 <= index_j <= 127:
            s64_127.append(index_j % 64)
        if 128 <= index_j <= 191:
            s128_191.append(index_j % 64)
        if 192 <= index_j <= 255:
            s192_255.append(index_j % 64)
        if 256 <= index_j:
            s256.append(index_j % 64)
        # Change the value
        index_j = (176 * index_j) % SUBTERRANEAN_SIZE

    s.sort()
    print(f"# {', '.join(f'{i}={i[0] % 64}' for i in s)}")
    print()
    s0_63.sort()
    s64_127.sort()
    s128_191.sort()
    s192_255.sort()

    # Now we have to interleave the other numbers

    # The interleaved adds the chunks of wires we can just send through.
    print(f"# s0_63\t\t: {','.join([f'{i}-{i}' for i in s0_63])},  {','.join(interleave64(s0_63))}")
    print(f"# s64_127\t: {','.join([f'{i}-{i}' for i in s64_127])},  {','.join(interleave64(s64_127))}")
    print(f"# s128_191\t: {','.join([f'{i}-{i}' for i in s128_191])},  {','.join(interleave64(s128_191))}")
    print(f"# s192_255\t: {','.join([f'{i}-{i}' for i in s192_255])},  {','.join(interleave64(s192_255))}")
    print(f"# s256\t\t: {','.join([f'{i}-{i}' for i in s256])}")

    new_state[index_j] ^= 1
    print(f"\tnew_state[{index_j}] = new_state[{index_j}] ^ 1")
    print("\treturn new_state")
    return new_state

def interleave64(l:[int]):
    l.sort()
    next_value = float("inf")
    if l and l[0] != 0: # yield first one
        yield f"0-{l[0]-1}"

    for index, i in enumerate(l):
        if index + 1 > len(l)-1:
            if next_value < 64: # yield last missing one up to 64
                yield f"{next_value+1}-{63}"
            break
        next_value = l[index+1]
        yield f"{i+1}-{next_value-1}"


def subterranean_absorb_keyed(state, value_in):
    # print("def subterranean_absorb_keyed(state:bytes, value_in:bytes) -> bytes:")
    # print(f"\tnew_state = [state[i] for i in range({len(state)})] # Copy state")
    new_state = [state[i] for i in range(len(state))]
    i = 0
    while (i < len(value_in) - 31):
        # print(f"\tnew_state = subterranean_duplex(new_state, value_in[{i}-{i + 32}]))")
        new_state = subterranean_duplex(new_state, value_in[i:i + 32])
        i += 32
    new_state = subterranean_duplex(new_state, value_in[i:])
    # print(f"\tnew_state = subterranean_duplex(new_state, value_in[{i}:])")
    # print("\treturn new_state")
    return new_state


def subterranean_init():
    state = [0 for i in range(SUBTERRANEAN_SIZE)]
    return state



def bytearray_to_bits(value):
    value_bits = [((int(value[i // 8]) & (1 << (i % 8))) >> (i % 8)) for i in range(len(value) * 8)]
    return value_bits

a_state = subterranean_init()

import secrets

value_in = bytearray_to_bits(secrets.token_bytes(16))
print(f"Value in: {value_in}") # 128 bits

print(subterranean_absorb_keyed(a_state, value_in))
