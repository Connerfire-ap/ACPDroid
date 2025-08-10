.class public final Lorg/ligi/passandroid/ui/edit/ITFHelperKt;
.super Ljava/lang/Object;
.source "ITFHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "getRandomITF",
        "",
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
.method public static final getRandomITF()Ljava/lang/String;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3
    new-instance v9, Lkotlin/ranges/IntRange;

    const/16 v0, 0xb

    invoke-direct {v9, v4, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v9, Ljava/lang/Iterable;

    .line 4
    .local v9, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 5
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

    move-result v11

    .line 3
    .local v11, "item$iv$iv":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const/16 v0, 0x9

    int-to-double v12, v0

    mul-double/2addr v6, v12

    double-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    .end local v11    # "item$iv$iv":I
    :cond_0
    check-cast v10, Ljava/util/List;

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    .line 3
    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
