coefficient = [7, -(133/4), 6223/64, -(48125/256), 4495295/16384, -(19757157/65536), \
276759847/1048576, -(779369773/4194304), 132974445695/1073741824, \
-(390480510525/4294967296), 5408254767727/68719476736, \
-(16649912252813/274877906944), 584422637995287/17592186044416]

sep = [list(ele.as_integer_ratio()) for ele in coefficient]
new = [[ele[0] % 25, ele[1]%25] for ele in sep]
final = [ele[0] * inverse_mod(ele[1],25) for ele in new]
ans = 0
for k in range(len(final)):
    ans += (final[k]*(7^k))
    ans = ans % 25
ans
