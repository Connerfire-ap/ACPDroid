.class final Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedMessage"
.end annotation


# instance fields
.field private final messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;


# direct methods
.method public varargs constructor <init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V
    .locals 2
    .param p1, "messages"    # [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 127
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 128
    iput-object p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 129
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 6

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "size":I
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .local v1, "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 142
    .local v4, "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v4}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 141
    .end local v4    # "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method

.method public write(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 4
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .local v0, "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    .local v3, "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 133
    .end local v3    # "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method
