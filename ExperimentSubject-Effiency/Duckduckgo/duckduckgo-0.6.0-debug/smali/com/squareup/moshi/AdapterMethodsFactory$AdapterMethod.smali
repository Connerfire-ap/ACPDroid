.class abstract Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
.super Ljava/lang/Object;
.source "AdapterMethodsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/AdapterMethodsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AdapterMethod"
.end annotation


# instance fields
.field final adapter:Ljava/lang/Object;

.field final adaptersOffset:I

.field final annotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final jsonAdapters:[Lcom/squareup/moshi/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/moshi/JsonAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field final method:Ljava/lang/reflect/Method;

.field final nullable:Z

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "adapter"    # Ljava/lang/Object;
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "parameterCount"    # I
    .param p6, "adaptersOffset"    # I
    .param p7, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "IIZ)V"
        }
    .end annotation

    .line 278
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-static {p1}, Lcom/squareup/moshi/Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->type:Ljava/lang/reflect/Type;

    .line 280
    iput-object p2, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->annotations:Ljava/util/Set;

    .line 281
    iput-object p3, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->adapter:Ljava/lang/Object;

    .line 282
    iput-object p4, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    .line 283
    iput p6, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->adaptersOffset:I

    .line 284
    sub-int v0, p5, p6

    new-array v0, v0, [Lcom/squareup/moshi/JsonAdapter;

    iput-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->jsonAdapters:[Lcom/squareup/moshi/JsonAdapter;

    .line 285
    iput-boolean p7, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->nullable:Z

    .line 286
    return-void
.end method


# virtual methods
.method public bind(Lcom/squareup/moshi/Moshi;)V
    .locals 8
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;

    .line 289
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->jsonAdapters:[Lcom/squareup/moshi/JsonAdapter;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 291
    .local v0, "parameterTypes":[Ljava/lang/reflect/Type;
    iget-object v1, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 292
    .local v1, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    iget v2, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->adaptersOffset:I

    .local v2, "i":I
    array-length v3, v0

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 293
    iget-object v4, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->jsonAdapters:[Lcom/squareup/moshi/JsonAdapter;

    iget v5, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->adaptersOffset:I

    sub-int v5, v2, v5

    aget-object v6, v0, v2

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 294
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aget-object v7, v1, v2

    .line 295
    invoke-static {v7}, Lcom/squareup/moshi/Util;->jsonAnnotations([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v7

    .line 293
    invoke-virtual {p1, v6, v7}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v6

    aput-object v6, v4, v5

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "parameterTypes":[Ljava/lang/reflect/Type;
    .end local v1    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    return-void
.end method

.method public fromJson(Lcom/squareup/moshi/Moshi;Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;
    .param p2, "reader"    # Lcom/squareup/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "a1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->jsonAdapters:[Lcom/squareup/moshi/JsonAdapter;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 313
    .local v1, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 314
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->adapter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method protected invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->jsonAdapters:[Lcom/squareup/moshi/JsonAdapter;

    array-length v1, v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 326
    .local v1, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 327
    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 328
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->adapter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public toJson(Lcom/squareup/moshi/Moshi;Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;
    .param p2, "writer"    # Lcom/squareup/moshi/JsonWriter;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
