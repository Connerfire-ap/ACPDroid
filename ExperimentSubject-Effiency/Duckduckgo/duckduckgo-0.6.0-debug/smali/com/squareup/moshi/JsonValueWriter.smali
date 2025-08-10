.class final Lcom/squareup/moshi/JsonValueWriter;
.super Lcom/squareup/moshi/JsonWriter;
.source "JsonValueWriter.java"


# instance fields
.field private deferredName:Ljava/lang/String;

.field private final stack:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/squareup/moshi/JsonWriter;-><init>()V

    .line 33
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    .line 37
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->pushScope(I)V

    .line 38
    return-void
.end method

.method private add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;
    .locals 6
    .param p1, "newTop"    # Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->peekScope()I

    move-result v0

    .line 201
    .local v0, "scope":I
    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 202
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->scopes:[I

    iget v3, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    sub-int/2addr v3, v2

    const/4 v4, 0x7

    aput v4, v1, v3

    .line 206
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    sub-int/2addr v3, v2

    aput-object p1, v1, v3

    goto :goto_0

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JSON must have only one top-level value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->deferredName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 209
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/squareup/moshi/JsonValueWriter;->serializeNulls:Z

    if-eqz v1, :cond_3

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    check-cast v1, Ljava/util/Map;

    .line 212
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/squareup/moshi/JsonValueWriter;->deferredName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, "replaced":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 218
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "replaced":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->deferredName:Ljava/lang/String;

    goto :goto_0

    .line 214
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "replaced":Ljava/lang/Object;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Map key \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/squareup/moshi/JsonValueWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' has multiple values at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "replaced":Ljava/lang/Object;
    :cond_5
    if-ne v0, v2, :cond_6

    .line 222
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    check-cast v1, Ljava/util/List;

    .line 223
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    nop

    .line 229
    :goto_0
    return-object p0

    .line 226
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public beginArray()Lcom/squareup/moshi/JsonWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 54
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    aput-object v0, v1, v2

    .line 55
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonValueWriter;->pushScope(I)V

    .line 57
    return-object p0

    .line 50
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting too deep at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": circular reference?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 74
    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-direct {v0}, Lcom/squareup/moshi/LinkedHashTreeMap;-><init>()V

    .line 75
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 76
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    aput-object v0, v1, v2

    .line 77
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonValueWriter;->pushScope(I)V

    .line 78
    return-object p0

    .line 72
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting too deep at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": circular reference?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    .line 186
    .local v0, "size":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->scopes:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 189
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    .line 190
    return-void

    .line 187
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endArray()Lcom/squareup/moshi/JsonWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->peekScope()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    .line 65
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 66
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    sub-int/2addr v2, v1

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 67
    return-object p0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->peekScope()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/moshi/JsonValueWriter;->promoteValueToName:Z

    .line 86
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    .line 87
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    aput-object v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 90
    return-object p0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_2

    .line 97
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->peekScope()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/squareup/moshi/JsonValueWriter;->deferredName:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/moshi/JsonValueWriter;->promoteValueToName:Z

    .line 106
    return-object p0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 120
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 121
    return-object p0
.end method

.method public root()Ljava/lang/Object;
    .locals 3

    .line 41
    iget v0, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    .line 42
    .local v0, "size":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->scopes:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1

    .line 43
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public value(D)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonValueWriter;->lenient:Z

    if-nez v0, :cond_1

    .line 138
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonValueWriter;->promoteValueToName:Z

    if-eqz v0, :cond_2

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0

    .line 144
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 145
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 146
    return-object p0
.end method

.method public value(J)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonValueWriter;->promoteValueToName:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 154
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 155
    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 132
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 133
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/squareup/moshi/JsonWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_0
    nop

    .line 176
    .local v0, "bigDecimalValue":Ljava/math/BigDecimal;
    iget-boolean v1, p0, Lcom/squareup/moshi/JsonValueWriter;->promoteValueToName:Z

    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonValueWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v1

    return-object v1

    .line 179
    :cond_3
    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 180
    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 181
    return-object p0

    .line 169
    .end local v0    # "bigDecimalValue":Ljava/math/BigDecimal;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueWriter;->value(D)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0

    .line 164
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueWriter;->value(J)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonValueWriter;->promoteValueToName:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 114
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 115
    return-object p0
.end method

.method public value(Z)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->add(Ljava/lang/Object;)Lcom/squareup/moshi/JsonValueWriter;

    .line 126
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/JsonValueWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 127
    return-object p0
.end method
