.class public final Lorg/ligi/passandroid/model/comparator/PassByTypeFirstAndTimeSecondComparator;
.super Ljava/lang/Object;
.source "PassByTypeFirstAndTimeSecondComparator.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/comparator/PassByTypeFirstAndTimeSecondComparator;",
        "Ljava/util/Comparator;",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "()V",
        "passByTimeComparator",
        "Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;",
        "compare",
        "",
        "lhs",
        "rhs",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final passByTimeComparator:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;

    sget-object v1, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->Companion:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;

    sget-object v2, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->Companion:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;->getDIRECTION_ASC()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;-><init>(I)V

    iput-object v0, p0, Lorg/ligi/passandroid/model/comparator/PassByTypeFirstAndTimeSecondComparator;->passByTimeComparator:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lorg/ligi/passandroid/model/pass/Pass;

    check-cast p2, Lorg/ligi/passandroid/model/pass/Pass;

    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/model/comparator/PassByTypeFirstAndTimeSecondComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I
    .locals 3
    .param p1, "lhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "rhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "lhs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rhs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getType()Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v2

    invoke-interface {p2}, Lorg/ligi/passandroid/model/pass/Pass;->getType()Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Lorg/ligi/passandroid/model/pass/PassType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 14
    .local v0, "compareResult":I
    if-eqz v0, :cond_0

    .line 17
    .end local v0    # "compareResult":I
    :goto_0
    return v0

    .restart local v0    # "compareResult":I
    :cond_0
    iget-object v1, p0, Lorg/ligi/passandroid/model/comparator/PassByTypeFirstAndTimeSecondComparator;->passByTimeComparator:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;

    invoke-virtual {v1, p1, p2}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I

    move-result v0

    goto :goto_0
.end method
