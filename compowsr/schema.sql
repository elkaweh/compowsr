drop table if exists acc_links;
create table acc_links (
    id integer primary key autoincrement,
    bnet_id integer not null,
    bnet_region varchar not null,
    bnet_name varchar not null,
    reddit_id varchar not null,
    reddit_name varchar not null,
    last_update date not null,
    last_rank varchar not null
);
create unique index idx_bnet        on acc_links(bnet_id, bnet_region);
create unique index idx_reddit      on acc_links(reddit_id);
create unique index idx_bnet_reddit on acc_links(bnet_id, bnet_region, reddit_id);
