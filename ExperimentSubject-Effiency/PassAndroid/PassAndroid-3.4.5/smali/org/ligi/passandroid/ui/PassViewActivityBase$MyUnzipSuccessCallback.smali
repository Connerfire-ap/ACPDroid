.class public final Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;
.super Ljava/lang/Object;
.source "PassViewActivityBase.kt"

# interfaces
.implements Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/PassViewActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyUnzipSuccessCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;",
        "Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;",
        "dlg",
        "Landroid/app/Dialog;",
        "(Lorg/ligi/passandroid/ui/PassViewActivityBase;Landroid/app/Dialog;)V",
        "call",
        "",
        "uuid",
        "",
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
.field private final dlg:Landroid/app/Dialog;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivityBase;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "$outer"    # Lorg/ligi/passandroid/ui/PassViewActivityBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "dlg"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "dlg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->dlg:Landroid/app/Dialog;

    return-void
.end method

.method public static final synthetic access$getDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;)Landroid/app/Dialog;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->dlg:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    new-instance v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;

    invoke-direct {v0, p0, p1}, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;-><init>(Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method
