.class public Lorg/ligi/passandroid/ui/UnzipControllerSpec;
.super Ljava/lang/Object;
.source "UnzipControllerSpec.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B+\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB1\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/UnzipControllerSpec;",
        "",
        "context",
        "Landroid/content/Context;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "onSuccessCallback",
        "Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;",
        "failCallback",
        "Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;",
        "(Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V",
        "targetPath",
        "Ljava/io/File;",
        "(Ljava/io/File;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getFailCallback",
        "()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;",
        "getOnSuccessCallback",
        "()Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;",
        "overwrite",
        "",
        "getOverwrite",
        "()Z",
        "setOverwrite",
        "(Z)V",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "getTargetPath",
        "()Ljava/io/File;",
        "setTargetPath",
        "(Ljava/io/File;)V",
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
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final failCallback:Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onSuccessCallback:Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private overwrite:Z

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private targetPath:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "onSuccessCallback"    # Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "failCallback"    # Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/App$Companion;->getSettings()Lorg/ligi/passandroid/model/Settings;

    move-result-object v0

    invoke-interface {v0}, Lorg/ligi/passandroid/model/Settings;->getPassesDir()Ljava/io/File;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/ui/UnzipControllerSpec;-><init>(Ljava/io/File;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V
    .locals 1
    .param p1, "targetPath"    # Ljava/io/File;
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
    const-string v0, "targetPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->targetPath:Ljava/io/File;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->context:Landroid/content/Context;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->passStore:Lorg/ligi/passandroid/model/PassStore;

    iput-object p4, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->onSuccessCallback:Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    iput-object p5, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->failCallback:Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getFailCallback()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->failCallback:Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    return-object v0
.end method

.method public final getOnSuccessCallback()Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->onSuccessCallback:Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    return-object v0
.end method

.method public final getOverwrite()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->overwrite:Z

    return v0
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final getTargetPath()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->targetPath:Ljava/io/File;

    return-object v0
.end method

.method public final setOverwrite(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->overwrite:Z

    return-void
.end method

.method public final setTargetPath(Ljava/io/File;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lorg/ligi/passandroid/ui/UnzipControllerSpec;->targetPath:Ljava/io/File;

    return-void
.end method
