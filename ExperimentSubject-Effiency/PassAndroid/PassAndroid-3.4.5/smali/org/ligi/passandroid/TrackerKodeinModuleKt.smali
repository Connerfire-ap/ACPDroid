.class public final Lorg/ligi/passandroid/TrackerKodeinModuleKt;
.super Ljava/lang/Object;
.source "TrackerKodeinModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "createTrackerKodeinModule",
        "Lcom/github/salomonbrys/kodein/Kodein$Module;",
        "context",
        "Landroid/content/Context;",
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
.method public static final createTrackerKodeinModule(Landroid/content/Context;)Lcom/github/salomonbrys/kodein/Kodein$Module;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Module;

    const/4 v2, 0x0

    sget-object v0, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;->INSTANCE:Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/github/salomonbrys/kodein/Kodein$Module;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    return-object v1
.end method
