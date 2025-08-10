.class final Lcom/squareup/moshi/JsonValueReader;
.super Lcom/squareup/moshi/JsonReader;
.source "JsonValueReader.java"


# static fields
.field private static final JSON_READER_CLOSED:Ljava/lang/Object;


# instance fields
.field private final stack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/moshi/JsonValueReader;->JSON_READER_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "root"    # Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Lcom/squareup/moshi/JsonReader;-><init>()V

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueReader;->scopes:[I

    iget v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v3, 0x7

    aput v3, v1, v2

    .line 55
    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    aput-object p1, v0, v1

    .line 56
    return-void
.end method

.method private push(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newTop"    # Ljava/lang/Object;

    .line 290
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 293
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    aput-object p1, v1, v0

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting too deep at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private remove()V
    .locals 3

    .line 326
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    .line 327
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 328
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->scopes:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 331
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    if-lez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 334
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 335
    .local v0, "parent":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    move-object v1, v0

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonValueReader;->push(Ljava/lang/Object;)V

    .line 339
    .end local v0    # "parent":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;
    .locals 3
    .param p2, "expected"    # Lcom/squareup/moshi/JsonReader$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/squareup/moshi/JsonReader$Token;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 303
    .local v0, "peeked":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 306
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    if-ne p2, v2, :cond_2

    .line 307
    return-object v1

    .line 309
    :cond_2
    sget-object v1, Lcom/squareup/moshi/JsonValueReader;->JSON_READER_CLOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 310
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method

.method private stringKey(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 316
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 317
    .local v0, "name":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 318
    :cond_0
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public beginArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const-class v0, Ljava/util/List;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    .local v0, "peeked":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 62
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput-object v1, v2, v3

    .line 63
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->scopes:[I

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    sub-int/2addr v3, v4

    aput v4, v2, v3

    .line 64
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 67
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonValueReader;->push(Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void
.end method

.method public beginObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const-class v0, Ljava/util/Map;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 83
    .local v0, "peeked":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 85
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->scopes:[I

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonValueReader;->push(Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    sget-object v1, Lcom/squareup/moshi/JsonValueReader;->JSON_READER_CLOSED:Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 285
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->scopes:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    .line 287
    return-void
.end method

.method public endArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-class v0, Ljava/util/ListIterator;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 74
    .local v0, "peeked":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 78
    return-void

    .line 75
    :cond_0
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-class v0, Ljava/util/Iterator;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 95
    .local v0, "peeked":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    instance-of v1, v0, Ljava/util/ListIterator;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 99
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 100
    return-void

    .line 96
    :cond_0
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 107
    .local v0, "peeked":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/Iterator;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public nextBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 172
    .local v0, "peeked":Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public nextDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "peeked":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 187
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .local v1, "result":D
    goto :goto_0

    .line 188
    .end local v1    # "result":D
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 190
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .restart local v1    # "result":D
    nop

    .line 197
    :goto_0
    iget-boolean v3, p0, Lcom/squareup/moshi/JsonValueReader;->lenient:Z

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    new-instance v3, Lcom/squareup/moshi/JsonEncodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/squareup/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 202
    return-wide v1

    .line 191
    .end local v1    # "result":D
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v2}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v2

    throw v2

    .line 195
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method

.method public nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "peeked":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 234
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .local v1, "result":I
    goto :goto_0

    .line 235
    .end local v1    # "result":I
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 237
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .restart local v1    # "result":I
    goto :goto_0

    .line 238
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "asDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 244
    .local v2, "result":I
    nop

    .line 245
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    move v1, v2

    .line 249
    .end local v2    # "result":I
    .local v1, "result":I
    :goto_0
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 250
    return v1

    .line 242
    .local v1, "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e2":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v3}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v3

    throw v3

    .line 247
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method

.method public nextLong()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "peeked":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 210
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .local v1, "result":J
    goto :goto_0

    .line 211
    .end local v1    # "result":J
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 213
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .restart local v1    # "result":J
    goto :goto_0

    .line 214
    .end local v1    # "result":J
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "asDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v2, v3

    .line 220
    .local v2, "result":J
    nop

    .line 221
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    move-wide v1, v2

    .line 225
    .end local v2    # "result":J
    .local v1, "result":J
    :goto_0
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 226
    return-wide v1

    .line 218
    .local v1, "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 219
    .local v2, "e2":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v3}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v3

    throw v3

    .line 223
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const-class v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    .local v0, "peeked":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueReader;->stringKey(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 135
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v3, v3, -0x2

    aput-object v1, v2, v3

    .line 136
    return-object v1
.end method

.method public nextNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const-class v0, Ljava/lang/Void;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "peeked":Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 156
    return-object v0
.end method

.method public peek()Lcom/squareup/moshi/JsonReader$Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/squareup/moshi/JsonReader$Token;

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 115
    .local v0, "peeked":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 116
    :cond_1
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 117
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 118
    :cond_3
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 119
    :cond_4
    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 120
    :cond_5
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 121
    :cond_6
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 122
    :cond_7
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 123
    :cond_8
    if-nez v0, :cond_9

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 124
    :cond_9
    sget-object v1, Lcom/squareup/moshi/JsonValueReader;->JSON_READER_CLOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_a
    const-string v1, "a JSON value"

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    throw v1
.end method

.method promoteNameToValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueReader;->push(Ljava/lang/Object;)V

    .line 280
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public selectName(Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 7
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const-class v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "peeked":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueReader;->stringKey(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p1, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v3, v3

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 144
    iget-object v4, p1, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v5, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 146
    iget-object v4, p0, Lcom/squareup/moshi/JsonValueReader;->pathNames:[Ljava/lang/String;

    iget v5, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v5, v5, -0x2

    aput-object v1, v4, v5

    .line 147
    return v2

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public selectString(Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 4
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/JsonValueReader;->require(Ljava/lang/Class;Lcom/squareup/moshi/JsonReader$Token;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, "peeked":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v2, v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 162
    iget-object v3, p1, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    .line 164
    return v1

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public skipValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonValueReader;->failOnUnknown:Z

    if-nez v0, :cond_4

    .line 259
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    add-int/lit8 v2, v2, -0x2

    const-string v3, "null"

    aput-object v3, v0, v2

    .line 263
    :cond_0
    iget v0, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 265
    .local v0, "skipped":Ljava/lang/Object;
    :goto_0
    instance-of v2, v0, Ljava/util/Map$Entry;

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/Map$Entry;

    .line 268
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/squareup/moshi/JsonValueReader;->stack:[Ljava/lang/Object;

    iget v4, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    sub-int/2addr v4, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_1

    .line 269
    :cond_2
    iget v1, p0, Lcom/squareup/moshi/JsonValueReader;->stackSize:I

    if-lez v1, :cond_3

    .line 271
    invoke-direct {p0}, Lcom/squareup/moshi/JsonValueReader;->remove()V

    goto :goto_2

    .line 269
    :cond_3
    :goto_1
    nop

    .line 273
    :goto_2
    return-void

    .line 255
    .end local v0    # "skipped":Ljava/lang/Object;
    :cond_4
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
