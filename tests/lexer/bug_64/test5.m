% From https://github.com/matlab2tikz/matlab2tikz/wiki
m2t = m2t_addAxisOption(m2t, 'at', ...
                        ['{(' formatDim(pos.x.value, pos.x.unit) ','...
                              formatDim(pos.y.value, pos.y.unit) ')}']);