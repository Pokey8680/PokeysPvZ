.class Lcom/ea/rs/xpromo/Container;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static DEFAULT_EXPIRY_TIME:I = 0x0

.field private static DEFAULT_REFRESH_TIME:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_buttonItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ea/rs/xpromo/Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_buttonRefreshInterval:J

.field private m_discoveryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ea/rs/xpromo/Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_discoveryRefreshInterval:J

.field private m_nextUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const v0, 0x15180

    sput v0, Lcom/ea/rs/xpromo/Container;->DEFAULT_EXPIRY_TIME:I

    .line 23
    const/16 v0, 0xa

    sput v0, Lcom/ea/rs/xpromo/Container;->DEFAULT_REFRESH_TIME:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "dataString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/ea/nimble/Utility;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    .local v2, "jsonData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "discoveryItems"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 50
    const-string v5, "discoveryItems"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/ea/rs/xpromo/Container;->loadPromoItemsFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryItems:Ljava/util/List;

    .line 51
    const-string v5, "dicoveryRefreshInterval"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 52
    .local v4, "tmpNum":Ljava/lang/Number;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :goto_0
    iput-wide v6, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryRefreshInterval:J

    .line 55
    .end local v4    # "tmpNum":Ljava/lang/Number;
    :cond_0
    const-string v5, "buttonItems"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 57
    const-string v5, "buttonItems"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/ea/rs/xpromo/Container;->loadPromoItemsFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/ea/rs/xpromo/Container;->m_buttonItems:Ljava/util/List;

    .line 58
    const-string v5, "buttonRefreshInterval"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 59
    .restart local v4    # "tmpNum":Ljava/lang/Number;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :goto_1
    iput-wide v6, p0, Lcom/ea/rs/xpromo/Container;->m_buttonRefreshInterval:J

    .line 62
    .end local v4    # "tmpNum":Ljava/lang/Number;
    :cond_1
    const-string v5, "expires_in"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 63
    .restart local v4    # "tmpNum":Ljava/lang/Number;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :goto_2
    iput-wide v6, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    .line 64
    iget-wide v6, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    .line 65
    iget-wide v6, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    .line 66
    return-void

    .line 42
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v2    # "jsonData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "tmpNum":Ljava/lang/Number;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/InvalidObjectException;

    const-string v6, "Error parsing json data."

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataString":Ljava/lang/String;
    .restart local v2    # "jsonData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "tmpNum":Ljava/lang/Number;
    :cond_2
    sget v5, Lcom/ea/rs/xpromo/Container;->DEFAULT_REFRESH_TIME:I

    int-to-long v6, v5

    goto :goto_0

    .line 59
    :cond_3
    sget v5, Lcom/ea/rs/xpromo/Container;->DEFAULT_REFRESH_TIME:I

    int-to-long v6, v5

    goto :goto_1

    .line 63
    :cond_4
    sget v5, Lcom/ea/rs/xpromo/Container;->DEFAULT_EXPIRY_TIME:I

    int-to-long v6, v5

    goto :goto_2
.end method

.method private loadPromoItemsFrom(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ea/rs/xpromo/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "promoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 117
    .local v1, "promoItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/rs/xpromo/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    return-object v1

    .line 117
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "promoObject":Ljava/lang/Object;
    move-object v2, v3

    .line 119
    check-cast v2, Ljava/util/Map;

    .line 120
    .local v2, "promoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/ea/rs/xpromo/Item;

    invoke-direct {v0, v2}, Lcom/ea/rs/xpromo/Item;-><init>(Ljava/util/Map;)V

    .line 121
    .local v0, "promoItem":Lcom/ea/rs/xpromo/Item;
    invoke-virtual {v0}, Lcom/ea/rs/xpromo/Item;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method getButtonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/rs/xpromo/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ea/rs/xpromo/Container;->m_buttonItems:Ljava/util/List;

    return-object v0
.end method

.method getButtonRefreshInterval()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_buttonRefreshInterval:J

    return-wide v0
.end method

.method getDiscoveryItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/rs/xpromo/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryItems:Ljava/util/List;

    return-object v0
.end method

.method getDiscoveryRefreshInterval()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryRefreshInterval:J

    return-wide v0
.end method

.method isExpired()Z
    .locals 4

    .prologue
    .line 109
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 110
    .local v0, "nowTime":J
    iget-wide v2, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryItems:Ljava/util/List;

    .line 81
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryRefreshInterval:J

    .line 82
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Container;->m_buttonItems:Ljava/util/List;

    .line 83
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_buttonRefreshInterval:J

    .line 84
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    .line 85
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 71
    iget-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_discoveryRefreshInterval:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 72
    iget-object v0, p0, Lcom/ea/rs/xpromo/Container;->m_buttonItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 73
    iget-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_buttonRefreshInterval:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Lcom/ea/rs/xpromo/Container;->m_nextUpdateTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 75
    return-void
.end method
