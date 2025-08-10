.class public final Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
.super Lorg/ligi/passandroid/ui/UnzipControllerSpec;
.source "UnzipPassController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/UnzipPassController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamUnzipControllerSpec"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;",
        "Lorg/ligi/passandroid/ui/UnzipControllerSpec;",
        "inputStreamWithSource",
        "Lorg/ligi/passandroid/model/InputStreamWithSource;",
        "context",
        "Landroid/content/Context;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "onSuccessCallback",
        "Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;",
        "failCallback",
        "Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;",
        "(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V",
        "getInputStreamWithSource$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug",
        "()Lorg/ligi/passandroid/model/InputStreamWithSource;",
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
.field private final inputStreamWithSource:Lorg/ligi/passandroid/model/InputStreamWithSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V
    .locals 1
    .param p1, "inputStreamWithSource"    # Lorg/ligi/passandroid/model/InputStreamWithSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "onSuccessCallback"    # Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "failCallback"    # Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "inputStreamWithSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/ligi/passandroid/ui/UnzipControllerSpec;-><init>(Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->inputStreamWithSource:Lorg/ligi/passandroid/model/InputStreamWithSource;

    return-void
.end method


# virtual methods
.method public final getInputStreamWithSource$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Lorg/ligi/passandroid/model/InputStreamWithSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->inputStreamWithSource:Lorg/ligi/passandroid/model/InputStreamWithSource;

    return-object v0
.end method
