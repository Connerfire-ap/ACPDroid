.class public abstract Ldagger/android/DaggerIntentService;
.super Landroid/app/IntentService;
.source "DaggerIntentService.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 31
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Service;)V

    .line 32
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 33
    return-void
.end method
