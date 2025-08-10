.class public Lorg/openobservatory/ooniprobe/view/ListImageButton;
.super Landroid/widget/ImageButton;
.source "ListImageButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/view/ListImageButton;->setFocusable(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/view/ListImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 35
    return-void
.end method
