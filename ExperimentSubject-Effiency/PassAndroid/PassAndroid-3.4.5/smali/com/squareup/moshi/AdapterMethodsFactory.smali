.class final Lcom/squareup/moshi/AdapterMethodsFactory;
.super Ljava/lang/Object;
.source "AdapterMethodsFactory.java"

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    }
.end annotation


# instance fields
.field private final fromAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final toAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "toAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;>;"
    .local p2, "fromAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/squareup/moshi/AdapterMethodsFactory;->toAdapters:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/squareup/moshi/AdapterMethodsFactory;->fromAdapters:Ljava/util/List;

    .line 37
    return-void
.end method

.method static fromAdapter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    .locals 11
    .param p0, "adapter"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 207
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 208
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 209
    .local v1, "returnType":Ljava/lang/reflect/Type;
    invoke-static {p1}, Lcom/squareup/moshi/Util;->jsonAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Set;

    move-result-object v2

    .line 210
    .local v2, "returnTypeAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 211
    .local v8, "parameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    .line 213
    .local v10, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    array-length v0, v8

    if-lt v0, v6, :cond_0

    aget-object v0, v8, v4

    const-class v3, Lcom/squareup/moshi/JsonReader;

    if-ne v0, v3, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_0

    .line 216
    invoke-static {v6, v8}, Lcom/squareup/moshi/AdapterMethodsFactory;->parametersAreJsonAdapters(I[Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/squareup/moshi/AdapterMethodsFactory$4;

    array-length v5, v8

    move-object v3, p0

    move-object v4, p1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/squareup/moshi/AdapterMethodsFactory$4;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    .line 232
    :goto_0
    return-object v0

    .line 227
    :cond_0
    array-length v0, v8

    if-ne v0, v6, :cond_1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_1

    .line 229
    aget-object v0, v10, v4

    .line 230
    invoke-static {v0}, Lcom/squareup/moshi/Util;->jsonAnnotations([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v9

    .line 231
    .local v9, "qualifierAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    aget-object v0, v10, v4

    invoke-static {v0}, Lcom/squareup/moshi/Util;->hasNullable([Ljava/lang/annotation/Annotation;)Z

    move-result v7

    .line 232
    .local v7, "nullable":Z
    new-instance v0, Lcom/squareup/moshi/AdapterMethodsFactory$5;

    array-length v5, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/squareup/moshi/AdapterMethodsFactory$5;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ[Ljava/lang/reflect/Type;Ljava/util/Set;)V

    goto :goto_0

    .line 249
    .end local v7    # "nullable":Z
    .end local v9    # "qualifierAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected signature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> void fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static get(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "adapterMethods":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;>;"
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 260
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    .line 261
    .local v0, "adapterMethod":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    iget-object v3, v0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->annotations:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    .end local v0    # "adapterMethod":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    :goto_1
    return-object v0

    .line 259
    .restart local v0    # "adapterMethod":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "adapterMethod":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static get(Ljava/lang/Object;)Lcom/squareup/moshi/AdapterMethodsFactory;
    .locals 12
    .param p0, "adapter"    # Ljava/lang/Object;

    .prologue
    .line 102
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v6, "toAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v3, "fromAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v7, Ljava/lang/Object;

    if-eq v0, v7, :cond_5

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v8, v7

    .line 107
    .local v4, "m":Ljava/lang/reflect/Method;
    const-class v10, Lcom/squareup/moshi/ToJson;

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 108
    invoke-static {p0, v4}, Lcom/squareup/moshi/AdapterMethodsFactory;->toAdapter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v5

    .line 109
    .local v5, "toAdapter":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    iget-object v10, v5, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->type:Ljava/lang/reflect/Type;

    iget-object v11, v5, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->annotations:Ljava/util/Set;

    invoke-static {v6, v10, v11}, Lcom/squareup/moshi/AdapterMethodsFactory;->get(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v1

    .line 110
    .local v1, "conflicting":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    if-eqz v1, :cond_0

    .line 111
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflicting @ToJson methods:\n    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 115
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v1    # "conflicting":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    .end local v5    # "toAdapter":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    :cond_1
    const-class v10, Lcom/squareup/moshi/FromJson;

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 119
    invoke-static {p0, v4}, Lcom/squareup/moshi/AdapterMethodsFactory;->fromAdapter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v2

    .line 120
    .local v2, "fromAdapter":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    iget-object v10, v2, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->type:Ljava/lang/reflect/Type;

    iget-object v11, v2, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->annotations:Ljava/util/Set;

    invoke-static {v3, v10, v11}, Lcom/squareup/moshi/AdapterMethodsFactory;->get(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v1

    .line 121
    .restart local v1    # "conflicting":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    if-eqz v1, :cond_2

    .line 122
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflicting @FromJson methods:\n    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "conflicting":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    .end local v2    # "fromAdapter":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 105
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 132
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected at least one @ToJson or @FromJson method on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    :cond_6
    new-instance v7, Lcom/squareup/moshi/AdapterMethodsFactory;

    invoke-direct {v7, v6, v3}, Lcom/squareup/moshi/AdapterMethodsFactory;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method private static parametersAreJsonAdapters(I[Ljava/lang/reflect/Type;)Z
    .locals 5
    .param p0, "offset"    # I
    .param p1, "parameterTypes"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v3, 0x0

    .line 195
    move v0, p0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 196
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_0

    move v2, v3

    .line 199
    :goto_1
    return v2

    .line 197
    :cond_0
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v4, Lcom/squareup/moshi/JsonAdapter;

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    .line 195
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static toAdapter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    .locals 12
    .param p0, "adapter"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 146
    .local v8, "returnType":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 147
    .local v11, "parameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    .line 149
    .local v10, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    array-length v0, v11

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, v11, v0

    const-class v1, Lcom/squareup/moshi/JsonWriter;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_0

    const/4 v0, 0x2

    .line 152
    invoke-static {v0, v11}, Lcom/squareup/moshi/AdapterMethodsFactory;->parametersAreJsonAdapters(I[Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/squareup/moshi/Util;->jsonAnnotations([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v2

    .line 156
    .local v2, "qualifierAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lcom/squareup/moshi/AdapterMethodsFactory$2;

    const/4 v1, 0x1

    aget-object v1, v11, v1

    array-length v5, v11

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/moshi/AdapterMethodsFactory$2;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    .line 169
    :goto_0
    return-object v0

    .line 164
    .end local v2    # "qualifierAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    array-length v0, v11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v8, v0, :cond_1

    .line 166
    invoke-static {p1}, Lcom/squareup/moshi/Util;->jsonAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Set;

    move-result-object v9

    .line 167
    .local v9, "returnTypeAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/squareup/moshi/Util;->jsonAnnotations([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v2

    .line 168
    .restart local v2    # "qualifierAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/squareup/moshi/Util;->hasNullable([Ljava/lang/annotation/Annotation;)Z

    move-result v7

    .line 169
    .local v7, "nullable":Z
    new-instance v0, Lcom/squareup/moshi/AdapterMethodsFactory$3;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    array-length v5, v11

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/squareup/moshi/AdapterMethodsFactory$3;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZLjava/lang/reflect/Type;Ljava/util/Set;)V

    goto :goto_0

    .line 186
    .end local v2    # "qualifierAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    .end local v7    # "nullable":Z
    .end local v9    # "returnTypeAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected signature for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 10
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "moshi"    # Lcom/squareup/moshi/Moshi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory;->toAdapters:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/squareup/moshi/AdapterMethodsFactory;->get(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v2

    .line 42
    .local v2, "toAdapter":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory;->fromAdapters:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/squareup/moshi/AdapterMethodsFactory;->get(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v5

    .line 43
    .local v5, "fromAdapter":Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
    if-nez v2, :cond_0

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 46
    :cond_0
    if-eqz v2, :cond_1

    if-nez v5, :cond_5

    .line 48
    :cond_1
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Lcom/squareup/moshi/Moshi;->nextAdapter(Lcom/squareup/moshi/JsonAdapter$Factory;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/JsonAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 58
    .local v3, "delegate":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<Ljava/lang/Object;>;"
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p3}, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->bind(Lcom/squareup/moshi/Moshi;)V

    .line 59
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, p3}, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->bind(Lcom/squareup/moshi/Moshi;)V

    .line 61
    :cond_3
    new-instance v0, Lcom/squareup/moshi/AdapterMethodsFactory$1;

    move-object v1, p0

    move-object v4, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/moshi/AdapterMethodsFactory$1;-><init>(Lcom/squareup/moshi/AdapterMethodsFactory;Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;Lcom/squareup/moshi/JsonAdapter;Lcom/squareup/moshi/Moshi;Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;Ljava/util/Set;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 49
    .end local v3    # "delegate":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<Ljava/lang/Object;>;"
    :catch_0
    move-exception v8

    .line 50
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    if-nez v2, :cond_4

    const-string v9, "@ToJson"

    .line 51
    .local v9, "missingAnnotation":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " adapter for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " annotated "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    .end local v9    # "missingAnnotation":Ljava/lang/String;
    :cond_4
    const-string v9, "@FromJson"

    goto :goto_2

    .line 55
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "delegate":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<Ljava/lang/Object;>;"
    goto :goto_1
.end method
