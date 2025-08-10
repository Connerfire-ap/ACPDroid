.class final Lorg/ligi/passandroid/ui/PassViewHelper$fingerSize$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PassViewHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassViewHelper;-><init>(Landroid/app/Activity;)V
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
        "Ljava/lang/Integer;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewHelper;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassViewHelper;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewHelper$fingerSize$2;->this$0:Lorg/ligi/passandroid/ui/PassViewHelper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewHelper$fingerSize$2;->this$0:Lorg/ligi/passandroid/ui/PassViewHelper;

    # getter for: Lorg/ligi/passandroid/ui/PassViewHelper;->context:Landroid/app/Activity;
    invoke-static {v0}, Lorg/ligi/passandroid/ui/PassViewHelper;->access$getContext$p(Lorg/ligi/passandroid/ui/PassViewHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewHelper$fingerSize$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
