.class final Lorg/ligi/passandroid/ui/PassViewActivity$passViewHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PassViewActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassViewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lorg/ligi/passandroid/ui/PassViewHelper;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/ligi/passandroid/ui/PassViewHelper;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivity$passViewHelper$2;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivity$passViewHelper$2;->invoke()Lorg/ligi/passandroid/ui/PassViewHelper;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ligi/passandroid/ui/PassViewHelper;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 32
    new-instance v1, Lorg/ligi/passandroid/ui/PassViewHelper;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity$passViewHelper$2;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lorg/ligi/passandroid/ui/PassViewHelper;-><init>(Landroid/app/Activity;)V

    return-object v1
.end method
