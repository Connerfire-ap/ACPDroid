.class public final Lorg/ligi/passandroid/ui/edit/EANHelperKt;
.super Ljava/lang/Object;
.source "EANHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u000e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "getRandomEAN13",
        "",
        "isValidEAN13",
        "",
        "payload",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final getRandomEAN13()Ljava/lang/String;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 6
    const/4 v0, 0x0

    new-instance v9, Lkotlin/ranges/IntRange;

    const/16 v1, 0xb

    invoke-direct {v9, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v9, Ljava/lang/Iterable;

    .line 16
    .local v9, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 17
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v12

    .line 6
    .local v12, "item$iv$iv":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v0, 0x9

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    .end local v12    # "item$iv$iv":I
    :cond_0
    check-cast v10, Ljava/util/List;

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    .line 6
    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 7
    .local v14, "randomString":Ljava/lang/String;
    const/4 v0, 0x0

    new-instance v9, Lkotlin/ranges/IntRange;

    .end local v9    # "$receiver$iv":Ljava/lang/Iterable;
    const/16 v1, 0x9

    invoke-direct {v9, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v9, Ljava/lang/Iterable;

    .line 20
    .restart local v9    # "$receiver$iv":Ljava/lang/Iterable;
    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 21
    .restart local v10    # "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v12

    .line 7
    .restart local v12    # "item$iv$iv":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    .end local v12    # "item$iv$iv":I
    :cond_1
    check-cast v10, Ljava/util/List;

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v10, Ljava/lang/Iterable;

    .line 7
    nop

    .line 24
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    .line 7
    .local v13, "p1":Ljava/lang/String;
    invoke-static {v13}, Lorg/ligi/passandroid/ui/edit/EANHelperKt;->isValidEAN13(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    check-cast v11, Ljava/lang/String;

    .end local v11    # "element$iv":Ljava/lang/Object;
    return-object v11

    .end local v13    # "p1":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final isValidEAN13(Ljava/lang/String;)Z
    .locals 2
    .param p0, "payload"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "payload"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    nop

    .line 11
    :try_start_0
    new-instance v1, Lcom/google/zxing/oned/EAN13Writer;

    invoke-direct {v1}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/zxing/oned/EAN13Writer;->encode(Ljava/lang/String;)[Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v1, 0x1

    .line 15
    :goto_0
    return v1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method
