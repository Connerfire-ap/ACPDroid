.class final Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;
.super Ljava/lang/Object;
.source "MoveHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/functions/MoveHelperKt;->moveWithUndoSnackbar(Lorg/ligi/passandroid/model/PassClassifier;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $oldTopic:Ljava/lang/String;

.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/Pass;

.field final synthetic $passClassifier:Lorg/ligi/passandroid/model/PassClassifier;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/PassClassifier;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;->$passClassifier:Lorg/ligi/passandroid/model/PassClassifier;

    iput-object p2, p0, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iput-object p3, p0, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;->$oldTopic:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 13
    iget-object v0, p0, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;->$passClassifier:Lorg/ligi/passandroid/model/PassClassifier;

    iget-object v1, p0, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v2, p0, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;->$oldTopic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/ligi/passandroid/model/PassClassifier;->moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    return-void
.end method
