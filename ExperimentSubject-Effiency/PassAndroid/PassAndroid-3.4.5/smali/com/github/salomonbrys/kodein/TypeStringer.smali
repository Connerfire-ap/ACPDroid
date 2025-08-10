.class abstract Lcom/github/salomonbrys/kodein/TypeStringer;
.super Ljava/lang/Object;
.source "typeDisp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\"\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006H&J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/TypeStringer;",
        "",
        "()V",
        "dispName",
        "",
        "cls",
        "Ljava/lang/Class;",
        "dispString",
        "type",
        "Ljava/lang/reflect/Type;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dispName(Ljava/lang/Class;)Ljava/lang/String;
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final dispString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 22
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "type"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p0 .. p1}, Lcom/github/salomonbrys/kodein/TypeStringer;->dispName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 15
    :goto_0
    return-object v1

    .line 17
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_6

    move-object/from16 v1, p1

    .line 18
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v14

    if-nez v14, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v14, Ljava/lang/Class;

    .line 19
    .local v14, "cls":Ljava/lang/Class;
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 96
    .local v10, "$receiver$iv":[Ljava/lang/Object;
    new-instance v15, Ljava/util/ArrayList;

    array-length v1, v10

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v15, Ljava/util/Collection;

    .line 97
    .local v15, "destination$iv$iv":Ljava/util/Collection;
    const/16 v17, 0x0

    .line 98
    .local v17, "index$iv$iv":I
    const/4 v1, 0x0

    move v2, v1

    .end local v10    # "$receiver$iv":[Ljava/lang/Object;
    :goto_1
    array-length v1, v10

    if-ge v2, v1, :cond_5

    aget-object v20, v10, v2

    .line 99
    .local v20, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index$iv$iv":I
    .local v18, "index$iv$iv":I
    check-cast v20, Ljava/lang/reflect/TypeVariable;

    .end local v20    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, p1

    .line 20
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v12, v1, v17

    .line 21
    .local v12, "argument":Ljava/lang/reflect/Type;
    instance-of v1, v12, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    .line 100
    .local v11, "$receiver$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    array-length v1, v11

    if-ge v3, v1, :cond_3

    aget-object v16, v11, v3

    .local v16, "element$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    check-cast v19, Ljava/lang/reflect/Type;

    .local v19, "it":Ljava/lang/reflect/Type;
    move-object v1, v12

    .line 21
    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 101
    .end local v16    # "element$iv":Ljava/lang/Object;
    .end local v19    # "it":Ljava/lang/reflect/Type;
    :goto_3
    if-eqz v1, :cond_4

    .line 22
    const-string v1, "*"

    .line 21
    .end local v11    # "$receiver$iv":[Ljava/lang/Object;
    :goto_4
    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move/from16 v17, v18

    .end local v18    # "index$iv$iv":I
    .restart local v17    # "index$iv$iv":I
    goto :goto_1

    .line 21
    .end local v17    # "index$iv$iv":I
    .restart local v11    # "$receiver$iv":[Ljava/lang/Object;
    .restart local v16    # "element$iv":Ljava/lang/Object;
    .restart local v18    # "index$iv$iv":I
    .restart local v19    # "it":Ljava/lang/reflect/Type;
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 101
    .end local v16    # "element$iv":Ljava/lang/Object;
    .end local v19    # "it":Ljava/lang/reflect/Type;
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 24
    .end local v11    # "$receiver$iv":[Ljava/lang/Object;
    :cond_4
    const-string v1, "argument"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/github/salomonbrys/kodein/TypeStringer;->dispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .end local v12    # "argument":Ljava/lang/reflect/Type;
    .end local v18    # "index$iv$iv":I
    .restart local v17    # "index$iv$iv":I
    :cond_5
    move-object v13, v15

    .line 102
    check-cast v13, Ljava/util/List;

    .line 26
    .local v13, "arguments":Ljava/util/List;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "type.rawType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/salomonbrys/kodein/TypeStringer;->dispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v1, v13

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, ", "

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 28
    .end local v13    # "arguments":Ljava/util/List;
    .end local v14    # "cls":Ljava/lang/Class;
    .end local v15    # "destination$iv$iv":Ljava/util/Collection;
    .end local v17    # "index$iv$iv":I
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_6
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p1 .. p1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/github/salomonbrys/kodein/TypeStringer;->dispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 29
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_7
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_f

    move-object/from16 v1, p1

    .line 30
    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "type.lowerBounds[0]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/salomonbrys/kodein/TypeStringer;->dispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v1, p1

    .line 31
    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    :goto_7
    if-nez v1, :cond_c

    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_e

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "*"

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    goto :goto_8

    .line 33
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "type.upperBounds[0]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/salomonbrys/kodein/TypeStringer;->dispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 35
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_e
    const-string v1, "*"

    goto/16 :goto_0

    .line 37
    :cond_f
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "type.genericComponentType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/salomonbrys/kodein/TypeStringer;->dispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 38
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_10
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_11

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
