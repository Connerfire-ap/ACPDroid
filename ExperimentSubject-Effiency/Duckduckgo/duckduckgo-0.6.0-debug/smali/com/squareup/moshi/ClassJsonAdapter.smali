.class final Lcom/squareup/moshi/ClassJsonAdapter;
.super Lcom/squareup/moshi/JsonAdapter;
.source "ClassJsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/moshi/JsonAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;


# instance fields
.field private final classFactory:Lcom/squareup/moshi/ClassFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/ClassFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final fieldsArray:[Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<",
            "*>;"
        }
    .end annotation
.end field

.field private final options:Lcom/squareup/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/squareup/moshi/ClassJsonAdapter$1;

    invoke-direct {v0}, Lcom/squareup/moshi/ClassJsonAdapter$1;-><init>()V

    sput-object v0, Lcom/squareup/moshi/ClassJsonAdapter;->FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

    return-void
.end method

.method constructor <init>(Lcom/squareup/moshi/ClassFactory;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/ClassFactory<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<",
            "*>;>;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/squareup/moshi/ClassJsonAdapter;, "Lcom/squareup/moshi/ClassJsonAdapter<TT;>;"
    .local p1, "classFactory":Lcom/squareup/moshi/ClassFactory;, "Lcom/squareup/moshi/ClassFactory<TT;>;"
    .local p2, "fieldsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;>;"
    invoke-direct {p0}, Lcom/squareup/moshi/JsonAdapter;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/squareup/moshi/ClassJsonAdapter;->classFactory:Lcom/squareup/moshi/ClassFactory;

    .line 134
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    iput-object v0, p0, Lcom/squareup/moshi/ClassJsonAdapter;->fieldsArray:[Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    .line 135
    nop

    .line 136
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 135
    invoke-static {v0}, Lcom/squareup/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/ClassJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$Options;

    .line 137
    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 3
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

    .line 142
    .local p0, "this":Lcom/squareup/moshi/ClassJsonAdapter;, "Lcom/squareup/moshi/ClassJsonAdapter<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/squareup/moshi/ClassJsonAdapter;->classFactory:Lcom/squareup/moshi/ClassFactory;

    invoke-virtual {v0}, Lcom/squareup/moshi/ClassFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .local v0, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 155
    :try_start_1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->beginObject()V

    .line 156
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/squareup/moshi/ClassJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$Options;

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/JsonReader;->selectName(Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v1

    .line 159
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/squareup/moshi/ClassJsonAdapter;->fieldsArray:[Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    aget-object v2, v2, v1

    .line 166
    .local v2, "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    invoke-virtual {v2, p1, v0}, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->read(Lcom/squareup/moshi/JsonReader;Ljava/lang/Object;)V

    .line 167
    .end local v1    # "index":I
    .end local v2    # "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    goto :goto_0

    .line 162
    .restart local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->nextName()Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->skipValue()V

    .line 164
    goto :goto_0

    .line 168
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    return-object v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 150
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 147
    .local v1, "targetException":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_3

    .line 148
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 149
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 147
    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 143
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "targetException":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 5
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

    .line 177
    .local p0, "this":Lcom/squareup/moshi/ClassJsonAdapter;, "Lcom/squareup/moshi/ClassJsonAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->beginObject()Lcom/squareup/moshi/JsonWriter;

    .line 178
    iget-object v0, p0, Lcom/squareup/moshi/ClassJsonAdapter;->fieldsArray:[Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 179
    .local v3, "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    iget-object v4, v3, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/squareup/moshi/JsonWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    .line 180
    invoke-virtual {v3, p1, p2}, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->write(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    .line 178
    .end local v3    # "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->endObject()Lcom/squareup/moshi/JsonWriter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    .local p0, "this":Lcom/squareup/moshi/ClassJsonAdapter;, "Lcom/squareup/moshi/ClassJsonAdapter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonAdapter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/ClassJsonAdapter;->classFactory:Lcom/squareup/moshi/ClassFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
