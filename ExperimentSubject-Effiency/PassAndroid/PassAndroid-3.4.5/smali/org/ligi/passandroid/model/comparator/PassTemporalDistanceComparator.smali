.class public final Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator;
.super Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;
.source "PassTemporalDistanceComparator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator;",
        "Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;",
        "()V",
        "compare",
        "",
        "lhs",
        "Lorg/ligi/passandroid/model/pass/Pass;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lorg/ligi/passandroid/model/pass/Pass;

    check-cast p2, Lorg/ligi/passandroid/model/pass/Pass;

    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I
    .locals 1
    .param p1, "lhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "rhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;->INSTANCE:Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p1, p2, v0}, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator;->calculateCompareForNullValues(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;Lkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method
