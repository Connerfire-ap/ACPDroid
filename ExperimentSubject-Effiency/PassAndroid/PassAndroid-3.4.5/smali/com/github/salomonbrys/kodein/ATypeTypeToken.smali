.class public abstract Lcom/github/salomonbrys/kodein/ATypeTypeToken;
.super Lcom/github/salomonbrys/kodein/JVMTypeToken;
.source "types.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/JVMTypeToken",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0017J\u0012\u0010\u000b\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\nH\u0017J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0017J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/ATypeTypeToken;",
        "T",
        "Lcom/github/salomonbrys/kodein/JVMTypeToken;",
        "()V",
        "_type",
        "Ljava/lang/reflect/Type;",
        "trueType",
        "getTrueType",
        "()Ljava/lang/reflect/Type;",
        "getRaw",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "getSuper",
        "isGeneric",
        "",
        "isWildcard",
        "type",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private _type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/github/salomonbrys/kodein/JVMTypeToken;-><init>()V

    return-void
.end method


# virtual methods
.method public getRaw()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_0
    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_4

    move-object v0, v2

    :goto_1
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 103
    .local v0, "realType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "realType":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/github/salomonbrys/kodein/TypeToken;

    .end local p0    # "this":Lcom/github/salomonbrys/kodein/ATypeTypeToken;
    move-object v1, p0

    .line 103
    .restart local v0    # "realType":Ljava/lang/reflect/ParameterizedType;
    .restart local p0    # "this":Lcom/github/salomonbrys/kodein/ATypeTypeToken;
    :goto_2
    return-object v1

    :cond_3
    check-cast v1, Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    goto :goto_2

    .end local v0    # "realType":Ljava/lang/reflect/ParameterizedType;
    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public getSuper()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v0

    # invokes: Lcom/github/salomonbrys/kodein/TypesKt;->_getTypeSuperTT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;
    invoke-static {v0}, Lcom/github/salomonbrys/kodein/TypesKt;->access$_getTypeSuperTT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTrueType()Ljava/lang/reflect/Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public isGeneric()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public isWildcard()Z
    .locals 16

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v13

    instance-of v14, v13, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-nez v14, :cond_0

    const/4 v13, 0x0

    :cond_0
    check-cast v13, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    if-eqz v13, :cond_1

    :goto_0
    instance-of v14, v13, Ljava/lang/reflect/ParameterizedType;

    if-nez v14, :cond_9

    const/4 v12, 0x0

    :goto_1
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_2

    .line 112
    .local v12, "realType":Ljava/lang/reflect/ParameterizedType;
    const/4 v6, 0x0

    .line 113
    .local v6, "hasWildCard":Z
    const/4 v5, 0x0

    .line 115
    .local v5, "hasSpecific":Z
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v13, Lkotlin/TypeCastException;

    const-string v14, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 110
    .end local v5    # "hasSpecific":Z
    .end local v6    # "hasWildCard":Z
    .end local v12    # "realType":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v13

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    .line 347
    :goto_2
    return v13

    .line 115
    .restart local v5    # "hasSpecific":Z
    .restart local v6    # "hasWildCard":Z
    .restart local v12    # "realType":Ljava/lang/reflect/ParameterizedType;
    :cond_3
    check-cast v3, Ljava/lang/Class;

    .line 116
    .local v3, "cls":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 343
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 344
    .local v8, "index$iv":I
    const/4 v13, 0x0

    move v14, v13

    .end local v0    # "$receiver$iv":[Ljava/lang/Object;
    :goto_3
    array-length v13, v0

    if-ge v14, v13, :cond_7

    aget-object v11, v0, v14

    .local v11, "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index$iv":I
    .local v9, "index$iv":I
    check-cast v11, Ljava/lang/reflect/TypeVariable;

    .end local v11    # "item$iv":Ljava/lang/Object;
    move v7, v8

    .line 117
    .local v7, "i":I
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    aget-object v2, v13, v7

    .line 119
    .local v2, "argument":Ljava/lang/reflect/Type;
    instance-of v13, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 345
    .local v1, "$receiver$iv":[Ljava/lang/Object;
    const/4 v13, 0x0

    move v15, v13

    :goto_4
    array-length v13, v1

    if-ge v15, v13, :cond_5

    aget-object v4, v1, v15

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v10, v4

    check-cast v10, Ljava/lang/reflect/Type;

    .local v10, "it":Ljava/lang/reflect/Type;
    move-object v13, v2

    .line 119
    check-cast v13, Ljava/lang/reflect/WildcardType;

    invoke-interface {v13}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    invoke-static {v13, v10}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    .line 346
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v10    # "it":Ljava/lang/reflect/Type;
    :goto_5
    if-eqz v13, :cond_6

    .line 120
    const/4 v6, 0x1

    .line 123
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    :goto_6
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    move v8, v9

    .end local v9    # "index$iv":I
    .restart local v8    # "index$iv":I
    goto :goto_3

    .line 119
    .end local v8    # "index$iv":I
    .restart local v1    # "$receiver$iv":[Ljava/lang/Object;
    .restart local v4    # "element$iv":Ljava/lang/Object;
    .restart local v9    # "index$iv":I
    .restart local v10    # "it":Ljava/lang/reflect/Type;
    :cond_4
    add-int/lit8 v13, v15, 0x1

    move v15, v13

    goto :goto_4

    .line 346
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v10    # "it":Ljava/lang/reflect/Type;
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 122
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    goto :goto_6

    .line 347
    .end local v2    # "argument":Ljava/lang/reflect/Type;
    .end local v7    # "i":I
    .end local v9    # "index$iv":I
    .restart local v8    # "index$iv":I
    :cond_7
    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    const/4 v13, 0x1

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    .end local v3    # "cls":Ljava/lang/Class;
    .end local v5    # "hasSpecific":Z
    .end local v6    # "hasWildCard":Z
    .end local v8    # "index$iv":I
    .end local v12    # "realType":Ljava/lang/reflect/ParameterizedType;
    :cond_9
    move-object v12, v13

    goto :goto_1
.end method

.method public type()Ljava/lang/reflect/Type;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->_type:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p0

    .line 89
    check-cast v0, Lcom/github/salomonbrys/kodein/ATypeTypeToken;

    .line 91
    .local v0, "$receiver":Lcom/github/salomonbrys/kodein/ATypeTypeToken;
    # invokes: Lcom/github/salomonbrys/kodein/TypesKt;->get_needPTWrapper()Z
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypesKt;->access$get_needPTWrapper$p()Z

    move-result v2

    if-nez v2, :cond_1

    # invokes: Lcom/github/salomonbrys/kodein/TypesKt;->get_needGATWrapper()Z
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypesKt;->access$get_needGATWrapper$p()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    .line 97
    .local v1, "it":Ljava/lang/reflect/Type;
    :goto_1
    iput-object v1, v0, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->_type:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 93
    .end local v1    # "it":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 94
    :cond_2
    # invokes: Lcom/github/salomonbrys/kodein/TypesKt;->get_needPTWrapper()Z
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypesKt;->access$get_needPTWrapper$p()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;-><init>(Ljava/lang/reflect/Type;)V

    check-cast v2, Ljava/lang/reflect/Type;

    move-object v1, v2

    goto :goto_1

    .line 95
    :cond_3
    # invokes: Lcom/github/salomonbrys/kodein/TypesKt;->get_needGATWrapper()Z
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypesKt;->access$get_needGATWrapper$p()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;-><init>(Ljava/lang/reflect/Type;)V

    check-cast v2, Ljava/lang/reflect/Type;

    move-object v1, v2

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;->getTrueType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method
