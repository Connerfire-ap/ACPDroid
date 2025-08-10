.class final Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;
.super Lcom/squareup/moshi/JsonAdapter;
.source "StandardJsonAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/StandardJsonAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnumJsonAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/squareup/moshi/JsonAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final constants:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final nameStrings:[Ljava/lang/String;

.field private final options:Lcom/squareup/moshi/JsonReader$Options;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;, "Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter<TT;>;"
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/squareup/moshi/JsonAdapter;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->enumType:Ljava/lang/Class;

    .line 222
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Enum;

    iput-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->constants:[Ljava/lang/Enum;

    .line 223
    iget-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->constants:[Ljava/lang/Enum;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->nameStrings:[Ljava/lang/String;

    .line 224
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->constants:[Ljava/lang/Enum;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 225
    iget-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->constants:[Ljava/lang/Enum;

    aget-object v1, v5, v3

    .line 226
    .local v1, "constant":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-class v6, Lcom/squareup/moshi/Json;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/Json;

    .line 227
    .local v0, "annotation":Lcom/squareup/moshi/Json;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/squareup/moshi/Json;->name()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "name":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->nameStrings:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 230
    .end local v0    # "annotation":Lcom/squareup/moshi/Json;
    .end local v1    # "constant":Ljava/lang/Enum;, "TT;"
    :cond_1
    iget-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->nameStrings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/squareup/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$Options;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$Options;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 231
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing field in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Enum;
    .locals 5
    .param p1, "reader"    # Lcom/squareup/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;, "Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter<TT;>;"
    iget-object v2, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$Options;

    invoke-virtual {p1, v2}, Lcom/squareup/moshi/JsonReader;->selectString(Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v0

    .line 238
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->constants:[Ljava/lang/Enum;

    aget-object v2, v2, v0

    return-object v2

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected one of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->nameStrings:[Ljava/lang/String;

    .line 243
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 244
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;, "Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Enum;)V
    .locals 2
    .param p1, "writer"    # Lcom/squareup/moshi/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;, "Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->nameStrings:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonWriter;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    .line 249
    return-void
.end method

.method public bridge synthetic toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;, "Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter<TT;>;"
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Enum;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    .local p0, "this":Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;, "Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonAdapter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->enumType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
